import 'package:hydro_sdk/cfr/vm/frame.dart';
import 'package:meta/meta.dart';

void setupval({@required Frame frame, @required int A, @required int B}) {
  frame.setUpval(B, frame.GR(A));
}
