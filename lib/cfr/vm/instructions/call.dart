import 'package:hydro_sdk/cfr/thread/threadResult.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/frame.dart';

@pragma('vm:prefer-inline')
@pragma('dart2js:tryInline')
ThreadResult? call({
  required Frame frame,
  required int A,
  required int B,
  required int C,
}) {
  if (B != 0) frame.setTop(A + B);
  var x = frame.GR(A);
  List<dynamic> args = List.filled(
    B == 0 ? frame.top - A : B - 1,
    null,
    growable: true,
  );
  if (B != 1) {
    for (int i = 0; i < args.length; i++) {
      args[i] = frame.GR(i + A + 1);
    }
  }

  if (x is Closure) {
    var f = frame.thread.newFrame(x);
    f.loadArgs(args);
    var res = f.cont();
    if (res.resumeTo != null) return res;
    frame.loadReturns(res.values);
  } else {
    var ret = frame.thread
        .attemptCall(x, args: args, hydroState: frame.context.hydroState);
    frame.loadReturns(ret);
  }

  return null;
}
