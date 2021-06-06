import 'package:hydro_sdk/cfr/vm/frame.dart';

@pragma('vm:prefer-inline')
@pragma('dart2js:tryInline')
void setupval({required Frame frame, required int A, required int B}) {
  frame.setUpval(B, frame.GR(A));
}
