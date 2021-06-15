import 'package:hydro_sdk/cfr/thread/threadResult.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/frame.dart';

@pragma('vm:prefer-inline')
@pragma('dart2js:tryInline')
ThreadResult? tailcall({
  required Frame frame,
  required int A,
  required int B,
  required int C,
}) {
  List<dynamic> args = List.filled(
    B == 0 ? frame.top - A : B - 1,
    null,
    growable: true,
  );
  if (B != 1)
    for (int i = 0; i < args.length; i++) {
      args[i] = frame.GR(i + A + 1);
    }
  var x = frame.GR(A);
  frame.closeUpvals(0);

  if (x is Closure) {
    var f = frame.thread.newFrame(x);
    f.loadArgs(args);
    return f.cont();
  } else {
    var ret = frame.thread.attemptCall(frame.GR(A),
        args: args, hydroState: frame.context.hydroState);
    return ThreadResult(true, ret);
  }
}
