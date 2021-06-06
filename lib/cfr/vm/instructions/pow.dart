import 'dart:math';

import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/frame.dart';

@pragma('vm:prefer-inline')
@pragma('dart2js:tryInline')
void instPow(
    {required Frame frame, required int A, required int B, required int C}) {
  frame.SR(
      A,
      Context.attemptArithmetic(frame.RK(B), frame.RK(C), "__pow", pow,
          hydroState: frame.context.hydroState));
}
