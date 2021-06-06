import 'package:hydro_sdk/cfr/vm/frame.dart';

@pragma('vm:prefer-inline')
@pragma('dart2js:tryInline')
void loadkx({required Frame frame, required int A}) {
  frame.SR(A, frame.K![frame.getExtraArg()].value);
}
