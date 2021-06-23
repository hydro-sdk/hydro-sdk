import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/frame.dart';

@pragma('vm:prefer-inline')
@pragma('dart2js:tryInline')
void unm({required Frame frame, required int A}) {
  frame.SR(
      A,
      Context.attemptUnary(frame.GR(A), "__unm", Context.unm,
          hydroState: frame.context.hydroState));
}
