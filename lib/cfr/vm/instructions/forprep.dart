import 'package:hydro_sdk/cfr/vm/frame.dart';

@pragma('vm:prefer-inline')
@pragma('dart2js:tryInline')
void forprep(
    {required Frame frame, required int A, required int B, required int C}) {
  var init = frame.GR(A);
  var limit = frame.GR(A + 1);
  var step = frame.GR(A + 2);

  if (init is! num) throw "'for' initial value must be a number";
  if (limit is! num) throw "'for' limit value must be a number";
  if (step is! num) throw "'for' step value must be a number";

  frame.SR(A, frame.GR(A) - step);
  frame.programCounter += B;
}
