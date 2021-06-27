import 'package:hydro_sdk/cfr/coroutine/coroutinestatus.dart';
import 'package:hydro_sdk/cfr/thread/thread.dart';
import 'package:hydro_sdk/cfr/util.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadCoroutineLib({required HydroState hydroState, required Context ctx}) {
  var coroutine = new HydroTable();
  ctx.env["coroutine"] = coroutine;

  coroutine["create"] = (List<dynamic> args) {
    Closure x = Context.getArg1<Closure>(args, 0, "create");
    return [new Thread(closure: x, hydroState: hydroState)];
  };

  coroutine["resume"] = (List<dynamic> args) {
    Thread x = Context.getArg1<Thread>(args, 0, "resume");

    if (x.status != CoroutineStatus.SUSPENDED) {
      return [false, "cannot resume non-suspended coroutine"];
    }

    var res = x.resume(args.skip(1).toList(growable: false));

    if (!res.success) return [false, maybeAt(res.values, 0)];

    var o = <dynamic>[true];
    o.addAll(res.values!);

    return [];
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
