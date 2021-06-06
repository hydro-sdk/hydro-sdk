import 'package:hydro_sdk/cfr/vm/frame.dart';

@pragma('vm:prefer-inline')
@pragma('dart2js:tryInline')
void loadnil({required Frame frame, required int A, required int B}) {
  var a = A;
  frame.R.fillRange(a, a + B + 1);
}
