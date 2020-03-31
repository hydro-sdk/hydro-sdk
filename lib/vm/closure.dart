import 'dart:developer';

import 'package:flua/buildProfile.dart';
import 'package:flua/luastate.dart';
import 'package:flua/reassembler/hashPrototype.dart';
import 'package:flua/thread/thread.dart';
import 'package:flua/thread/threadResult.dart';
import 'package:flua/util.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/vm/frame.dart';
import 'package:flua/vm/prototype.dart';
import 'package:flua/vm/upVal.dart';

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

  List<dynamic> dispatch(List<dynamic> args, {@required LuaState parentState}) {
    if (buildProfile == BuildProfile.release ||
        parentState?.dispatchContext?.dispatchContext == null ||
        parentState?.dispatchContext?.resssemblyMap == null) {
      return call(args, parentState: parentState);
    } else if (buildProfile == BuildProfile.debug) {
      String currentHash = hashPrototype(proto, includeSourceLocations: false);

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
  }

  List<dynamic> call(List<dynamic> args, {LuaState parentState}) {
    // assert(parentState != null);
    var f = new Thread(closure: this).frame;
    f.loadArgs(args);
    ThreadResult x;
    try {
      x = f.cont();
    } catch (err) {
      print("Closure ${proto.name} threw");
      print("${proto.source}");
      print(err);
      throw err;
    }
    if (x.resumeTo != null) throw "cannot yield across dart call boundary";
    if (!x.success) {
      var v = maybeAt(x.values, 0);
      if (v is LuaErrorImpl) throw v;
      throw new LuaErrorImpl(maybeAt(x.values, 0), proto, f.programCounter);
    }
    return x.values;
  }
}
