import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/frame.dart';

@pragma('vm:prefer-inline')
@pragma('dart2js:tryInline')
void div(
    {required Frame frame, required int A, required int B, required int C}) {
  frame.SR(
      A,
      Context.attemptArithmetic(frame.RK(B), frame.RK(C), "__div", Context.div,
          hydroState: frame.context.hydroState));
}
