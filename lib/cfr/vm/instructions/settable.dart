import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/frame.dart';

@pragma('vm:prefer-inline')
@pragma('dart2js:tryInline')
void settable(
    {required Frame frame, required int A, required int B, required int C}) {
  Context.tableSet(
      frame.GR(A), frame.RK(B), frame.RK(C), frame.context.hydroState);
}
