import 'package:hydro_sdk/cfr/vm/frame.dart';
import 'package:meta/meta.dart';

void loadkx({@required Frame frame, @required int A}) {
  frame.SR(A, frame.K[frame.getExtraArg()].value);
}
