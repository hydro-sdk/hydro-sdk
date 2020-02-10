import 'package:flua/src/5_2/context.dart';
import 'package:flua/src/5_2/coroutinestatus.dart';
import 'package:flua/src/5_2/table.dart';
import 'package:flua/src/5_2/vm.dart';
import 'package:flua/src/util.dart';

loadCoroutineLib(Context ctx) {
  var coroutine = new Table();
  ctx.env["coroutine"] = coroutine;

  coroutine["create"] = (List<dynamic> args) {
    Closure x = Context.getArg1<Closure>(args, 0, "create");
    return [new Thread(closure: x)];
  };

  coroutine["resume"] = (List<dynamic> args) {
    Thread x = Context.getArg1<Thread>(args, 0, "resume");

    if (x.status != CoroutineStatus.SUSPENDED) {
      return [false, "cannot resume non-suspended coroutine"];
    }

    var res = x.resume(args.skip(1).toList(growable: false));

    if (!res.success) return [false, maybeAt(res.values, 0)];

    var o = <dynamic>[true];
    o.addAll(res.values);
  };

  coroutine["yield"] = ctx.yield = (List<dynamic> args) {
    throw "attempt to yield across Dart call boundry";
  };

  coroutine["status"] = (List<dynamic> args) {
    Thread x = Context.getArg1<Thread>(args, 0, "status");
    switch (x.status) {
      case CoroutineStatus.SUSPENDED:
        return ["suspended"];
      case CoroutineStatus.DEAD:
        return ["dead"];
      case CoroutineStatus.NORMAL:
        return ["normal"];
      case CoroutineStatus.RUNNING:
        return ["running"];
    }
  };

  coroutine["running"] = (Thread thread, List<dynamic> args) {
    return thread;
  };
}
