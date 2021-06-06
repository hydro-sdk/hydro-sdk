import 'package:hydro_sdk/cfr/vm/frame.dart';

@pragma('vm:prefer-inline')
@pragma('dart2js:tryInline')
void gettabup(
    {required Frame frame, required int A, required int B, required int C}) {
  var v = frame.context.tableIndex(frame.getUpval(B), frame.RK(C));
  frame.SR(A, v);
}
