import 'package:hydro_sdk/cfr/buildProfile.dart';
import 'package:hydro_sdk/cfr/vm/hydroError.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/thread/thread.dart';
import 'package:hydro_sdk/cfr/thread/threadResult.dart';
import 'package:hydro_sdk/cfr/util.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/frame.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';
import 'package:hydro_sdk/cfr/vm/upVal.dart';

import 'package:meta/meta.dart';

class Closure {
  Closure(
    this.proto, {
    this.parent,
    this.context,
    this.upvalues,
  });

  Prototype proto;
  final Frame parent;
  final Context context;
  final List<Upval> upvalues;

  BuildProfile get buildProfile => proto.buildProfile;

  List<dynamic> dispatch(List<dynamic> args,
      {@required HydroState parentState}) {
    assert(parentState != null);
    try {
      if (buildProfile != BuildProfile.debug) {
        return _dispatch(args, parentState: parentState);
      } else if (buildProfile == BuildProfile.debug &&
          proto.lineStart != 0 &&
          proto.lineEnd != 0) {
        if (proto.debugSymbol == null) {
          throw "Dispatched function prototypes are required to have debug symbols but the prototype from ${proto.lineStart}-${proto.lineEnd} in ${proto.source} could not be matched to a debug symbol";
        }
      }

      Prototype targetProto = parentState
          ?.dispatchContext?.dispatchContext?.closure?.proto
          ?.findPrototypeByDebugSymbol(symbol: proto.debugSymbol);

      if (targetProto != null) {
        proto = targetProto;
      } else if (proto.lineStart != 0 && proto.lineEnd != 0) {
        throw "Failed to dispatch to ${proto?.debugSymbol?.symbolFullyQualifiedMangleName} from ${proto.lineStart}-${proto.lineEnd} in ${proto.source}";
      }
      return _dispatch(args,parentState: parentState);
    } on HydroError catch (err) {
      err.addSymbolicatedStackTrace(symbols: parentState.symbols);
      throw err;
    }
  }

  List<dynamic> _dispatch(List<dynamic> args, {HydroState parentState}) {
    assert(parentState != null);
    var f = new Thread(closure: this, hydroState: parentState).frame;
    f.loadArgs(args);
    ThreadResult x;
    x = f.cont();
    if (x.resumeTo != null) throw "cannot yield across dart call boundary";
    if (!x.success) {
      var v = maybeAt(x.values, 0);
      if (v is HydroError) throw v;
      throw maybeAt(x.values, 0);
    }
    return x.values;
  }
}
