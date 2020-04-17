import 'package:hydro_sdk/cfr/vm/frame.dart';
import 'package:meta/meta.dart';

void loadnil({@required Frame frame, @required int A, @required int B}) {
  var a = A;
  frame.R.fillRange(a, a + B + 1);
}
