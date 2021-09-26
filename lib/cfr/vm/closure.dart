import 'package:hydro_sdk/cfr/buildProfile.dart';
import 'package:hydro_sdk/cfr/thread/thread.dart';
import 'package:hydro_sdk/cfr/thread/threadResult.dart';
import 'package:hydro_sdk/cfr/util.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/frame.dart';
import 'package:hydro_sdk/cfr/vm/hydroError.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';
import 'package:hydro_sdk/cfr/vm/upVal.dart';
import 'package:hydro_sdk/hydroState.dart';

class Closure {
  Closure(
    this.proto, {
    this.parent,
    this.context,
    this.upvalues,
  });

  Prototype? proto;
  final Frame? parent;
  final Context? context;
  final List<Upval?>? upvalues;

  BuildProfile get buildProfile => proto!.buildProfile;

  static Prototype maybeLookupReloadedPrototype({
    required Prototype prototype,
    required HydroState parentState,
  }) {
    if (prototype.buildProfile != BuildProfile.debug) {
      return prototype;
    } else if (prototype.buildProfile == BuildProfile.debug &&
        //Main chunk is reported as being from 0-0
        prototype.lineStart != 0 &&
        prototype.lineEnd != 0 &&
        parentState.dispatchContext != null) {
      if (prototype.debugSymbol == null) {
        throw "Dispatched function prototypes are required to have debug symbols but the prototype from ${prototype.lineStart}-${prototype.lineEnd} in ${prototype.source} could not be matched to a debug symbol";
      }
    }

    //If the calling environment didn't setup a dispatch context then
    //there's no point trying to dispatch and enforce one
    if (parentState.dispatchContext != null) {
      Prototype? targetProto = parentState
          .dispatchContext?.dispatchContext.closure.proto
          ?.findPrototypeByDebugSymbol(symbol: prototype.debugSymbol);

      if (targetProto != null) {
        prototype = targetProto;
      } else if (prototype.lineStart != 0 && prototype.lineEnd != 0) {
        throw "Failed to dispatch to ${prototype.debugSymbol?.symbolFullyQualifiedMangleName} from ${prototype.lineStart}-${prototype.lineEnd} in ${prototype.source}";
      }
    }
    return prototype;
  }

  List<dynamic> dispatch(
    List<dynamic> args, {
    required HydroState parentState,
    bool resetEnclosingLexicalEnvironment = false,
  }) {
    try {
      proto = maybeLookupReloadedPrototype(
          prototype: proto!, parentState: parentState);
      if (resetEnclosingLexicalEnvironment) {
        //Quietly rebuild this closure from scratch with the (potentially)
        //updated function prototype, and pass that along to be executed
        return _dispatch(args,
            parentState: parentState,
            closure: Closure(
              proto,
              context: context,
              parent: parent,
              upvalues: List.generate(proto!.upvals.length, (i) {
                var def = proto!.upvals[i];
                return def.stack
                    ? parent!.openUpval(def.reg)
                    : parent!.upvalues[def.reg];
              }),
            ));
      }
      return _dispatch(args, parentState: parentState, closure: this);
    } on HydroError catch (err) {
      err.addSymbolicatedStackTrace(symbols: parentState.symbols);
      throw err;
    }
  }

  static List<dynamic> _dispatch(
    List<dynamic> args, {
    required HydroState parentState,
    required Closure closure,
  }) {
    var f = new Thread(closure: closure, hydroState: parentState).frame!;
    f.loadArgs(args);
    ThreadResult x;
    x = f.cont();
    if (x.resumeTo != null) throw "cannot yield across dart call boundary";
    if (!x.success) {
      var v = maybeAt(x.values, 0);
      if (v is HydroError) throw v;
      throw maybeAt(x.values, 0);
    }
    return x.values ?? [];
  }
}
