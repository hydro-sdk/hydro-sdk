import 'package:hydro_sdk/cfr/coroutine/coroutineresult.dart';
import 'package:hydro_sdk/cfr/coroutine/coroutinestatus.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/frame.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

class Thread {
  Thread({required Closure closure, required this.hydroState}) {
    frame = newFrame(closure);
  }

  HydroState hydroState;

  Frame newFrame(Closure closure) => new Frame(closure.proto!,
      context: closure.context, upvalues: closure.upvalues, thread: this);

  Frame? frame;
  Frame? _resumeTo;

  CoroutineStatus status = CoroutineStatus.SUSPENDED;
  bool started = false;

  List<dynamic>? attemptCall(
    dynamic x, {
    List<dynamic> args = const [],
    required HydroState hydroState,
  }) {
    if (x is HydroTable) {
      return Context.invokeMetamethod(x, "__call", args,
          parentState: hydroState);
    } else if (x is LuaDartFunc) {
      return x(args);
    } else if (x is LuaDartDebugFunc) {
      return x(this, args);
    } else if (x is Closure) {
      return x.dispatch(args, parentState: hydroState);
    } else if (x is Null Function(List<dynamic>)) {
      x(args);
    } else {
      throw "attempt to call a ${Context.getTypename(x)} value $x with $args";
    }
  }

  CoroutineResult resume([List<dynamic> params = const []]) {
    assert(status != CoroutineStatus.DEAD,
        "Coroutine dead, check status before calling resume");

    if (!started) {
      started = true;
      _resumeTo = frame;
    }

    status = CoroutineStatus.RUNNING;

    try {
      _resumeTo!.loadArgs(params);
      var res = _resumeTo!.cont();
      _resumeTo = res.resumeTo;
      status =
          _resumeTo != null ? CoroutineStatus.DEAD : CoroutineStatus.SUSPENDED;
      return new CoroutineResult(true, res.values);
    } catch (e) {
      status = CoroutineStatus.DEAD;
      return new CoroutineResult(false, [e]);
    }

    /*if (!started) {
      _updateFrame();
      // load main body arguments
      
      started = true;
    } else if (status == CoroutineStatus.SUSPENDED) { // resume from yield
      status = CoroutineStatus.RUNNING;
      var pc = _pc - 1;
      var OP = _code[pc * 4];
      var A = _code[pc * 4 + 1];
      var B = _code[pc * 4 + 2];
      var C = _code[pc * 4 + 3];
      
      // ADD SUB MUL DIV MOD POW UNM LEN GETTABUP GETTABLE SELF
      if ((OP >= 13 && OP <= 19) || OP == 21 || OP == 6 || OP == 7 || OP == 12) {
        _SR(A, params[0]);
      } else if (OP == 22) { // CONCAT
      
      }
    }*/
  }

  toString() =>
      "thread: 0x${(hashCode % 0x100000000).toRadixString(16).padLeft(8, "0")}";
}
