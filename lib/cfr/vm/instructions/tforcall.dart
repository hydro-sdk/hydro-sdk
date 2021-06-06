import 'package:hydro_sdk/cfr/util.dart';
import 'package:hydro_sdk/cfr/vm/frame.dart';

@pragma('vm:prefer-inline')
@pragma('dart2js:tryInline')
void tforcall(
    {required Frame frame, required int A, required int B, required int C}) {
  var ret = frame.thread.attemptCall(frame.GR(A),
      args: [frame.GR(A + 1), frame.GR(A + 2)],
      hydroState: frame.context.hydroState);
  var i = 0;
  for (int n = A + 3; n < A + C + 3; n++) frame.SR(n, maybeAt(ret, i++));

  var b = frame.code![frame.programCounter * 4 + 2];
  var a = frame.getExtraArg();

  if (frame.GR(a + 1) != null) {
    frame.SR(a, frame.GR(a + 1));
    frame.programCounter += b;
  }
}
