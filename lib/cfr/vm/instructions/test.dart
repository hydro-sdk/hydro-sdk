import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/frame.dart';

@pragma('vm:prefer-inline')
@pragma('dart2js:tryInline')
void test(
    {required Frame frame, required int A, required int B, required int C}) {
  if (!Context.truthy(frame.GR(A)) == (C != 0)) {
    frame.programCounter++;
  } else {
    frame.programCounter += frame.getNextJump() + 1;
  }
}
