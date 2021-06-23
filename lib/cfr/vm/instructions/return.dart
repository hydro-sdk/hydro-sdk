import 'package:hydro_sdk/cfr/thread/threadResult.dart';
import 'package:hydro_sdk/cfr/vm/frame.dart';

@pragma('vm:prefer-inline')
@pragma('dart2js:tryInline')
ThreadResult instReturn({
  required Frame frame,
  required int A,
  required int B,
  required int C,
}) {
  frame.closeUpvals(0);
  List<dynamic> ret = List.filled(
    B == 0 ? 1 + frame.top - A : B - 1,
    null,
    growable: true,
  );
  for (int i = A; i < (B == 0 ? frame.top : A + B - 1); i++) {
    ret[i - A] = frame.GR(i);
  }
  return ThreadResult(true, ret);
}
