import 'package:flua/buildProfile.dart';
import 'package:flua/thread/thread.dart';
import 'package:flua/thread/threadResult.dart';
import 'package:flua/util.dart';
import 'package:flua/vm/context.dart';
import 'package:flua/vm/frame.dart';
import 'package:flua/vm/prototype.dart';
import 'package:flua/vm/upVal.dart';

class Closure {
  Closure(
    this.proto, {
    this.parent,
    this.context,
    this.upvalues,
  });

  final Prototype proto;
  final Frame parent;
  final Context context;
  final List<Upval> upvalues;

  BuildProfile get buildProfile => proto.buildProfile;

  List<dynamic> call(List<dynamic> args) {
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
