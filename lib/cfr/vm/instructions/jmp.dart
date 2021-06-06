import 'package:hydro_sdk/cfr/vm/frame.dart';

@pragma('vm:prefer-inline')
@pragma('dart2js:tryInline')
void jmp({required Frame frame, required int A, required int B}) {
  frame.programCounter += B;
  if (A > 0) frame.closeUpvals(A - 1);
}
