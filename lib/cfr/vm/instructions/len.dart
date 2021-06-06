import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/frame.dart';

@pragma('vm:prefer-inline')
@pragma('dart2js:tryInline')
void len({required Frame frame, required int A, required int B}) {
  frame.SR(
      A, Context.getLength(frame.GR(B), hydroState: frame.context.hydroState));
}
