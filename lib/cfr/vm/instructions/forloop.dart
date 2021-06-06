import 'package:hydro_sdk/cfr/vm/frame.dart';

@pragma('vm:prefer-inline')
@pragma('dart2js:tryInline')
void forloop(
    {required Frame frame, required int A, required int B, required int C}) {
  var step = frame.GR(A + 2);
  var idx = frame.SR(A, frame.GR(A) + step);
  var limit = frame.GR(A + 1);

  if ((step > 0 && idx <= limit) || (step < 0 && limit <= idx)) {
    frame.programCounter += B;
    frame.SR(A + 3, frame.GR(A));
  }
}
