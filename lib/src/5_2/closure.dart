import 'package:flua/src/5_2/context.dart';
import 'package:flua/src/5_2/frame.dart';
import 'package:flua/src/5_2/thread.dart';
import 'package:flua/src/5_2/threadResult.dart';
import 'package:flua/src/5_2/upVal.dart';
import 'package:flua/src/prototype.dart';
import 'package:flua/src/util.dart';

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

  List<dynamic> call(List<dynamic> args) {
    var f = new Thread(closure: this).frame;
    f.loadArgs(args);
    ThreadResult x;
    try {
      x = f.cont();
    } catch (err) {
      print("Closure ${proto.name} threw");
      print("${proto.source}");
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