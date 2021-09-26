import 'package:hydro_sdk/cfr/vm/frame.dart';

@pragma('vm:prefer-inline')
@pragma('dart2js:tryInline')
void loadbool(
    {required Frame frame, required int A, required int B, required int C}) {
  frame.SR(A, B != 0);
  if (C != 0) frame.programCounter++;
}
