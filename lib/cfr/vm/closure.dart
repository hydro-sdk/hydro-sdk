import 'package:hydro_sdk/cfr/buildProfile.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/reassembler/hashPrototype.dart';
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
    try {
      if (buildProfile == BuildProfile.release ||
          parentState?.dispatchContext?.dispatchContext == null ||
          parentState?.dispatchContext?.resssemblyMap == null) {
        return call(args, parentState: parentState);
      } else if (buildProfile == BuildProfile.debug) {
        String currentHash =
            hashPrototype(proto, includeSourceLocations: false);

        String targetHash = currentHash;

        Prototype targetProto = parentState
            ?.dispatchContext?.dispatchContext?.closure?.proto
            ?.findPrototypeByHash(targetHash: targetHash);
        if (targetProto != null) {
          proto = targetProto;
        }
        if (targetProto == null) {
          for (var i = 0;
              i != parentState?.dispatchContext?.resssemblyMap?.length;
              ++i) {
            var entry = parentState?.dispatchContext?.resssemblyMap[i];
            if (entry[0] == targetHash) {
              targetHash = entry[1];
            } else if (entry[1] == targetHash) {
              targetHash = entry[0];
            }
          }

          Prototype targetProto = parentState
              ?.dispatchContext?.dispatchContext?.closure?.proto
              ?.findPrototypeByHash(targetHash: targetHash);

          if (targetProto != null) {
            proto = targetProto;
          }
        }
      }

      return call(args);
    } on LuaError catch (err) {
      err.addSymbolicatedStackTrace(
          moduleDebugInfoRaw: parentState.moduleDebugInfoRaw);
      throw err;
    }
  }

  List<dynamic> call(List<dynamic> args, {HydroState parentState}) {
    // assert(parentState != null);
    var f = new Thread(closure: this).frame;
    f.loadArgs(args);
    ThreadResult x;
    x = f.cont();
    if (x.resumeTo != null) throw "cannot yield across dart call boundary";
    if (!x.success) {
      var v = maybeAt(x.values, 0);
      if (v is LuaError) throw v;
      throw maybeAt(x.values, 0);
    }
    return x.values;
  }
}
