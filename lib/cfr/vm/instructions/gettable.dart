import 'package:hydro_sdk/cfr/vm/frame.dart';

@pragma('vm:prefer-inline')
@pragma('dart2js:tryInline')
void gettable(
    {required Frame frame, required int A, required int B, required int C}) {
  frame.SR(A, frame.context.tableIndex(frame.RK(B), frame.RK(C)));
}
