import 'package:hydro_sdk/cfr/vm/frame.dart';

@pragma('vm:prefer-inline')
@pragma('dart2js:tryInline')
void self(
    {required Frame frame, required int A, required int B, required int C}) {
  frame.SR(A + 1, frame.GR(B));
  frame.SR(A, frame.context.tableIndex(frame.GR(B), frame.RK(C)));
}
