import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/frame.dart';

@pragma('vm:prefer-inline')
@pragma('dart2js:tryInline')
void setlist(
    {required Frame frame, required int A, required int B, required int C}) {
  if (B > 0) {
    for (int i = 1; i <= B; i++)
      Context.tableSet(frame.GR(A), ((C - 1) * 50) + i, frame.GR(A + i),
          frame.context.hydroState);
  } else {
    for (int i = 1; i <= frame.top - A; i++)
      Context.tableSet(frame.GR(A), ((C - 1) * 50) + i, frame.GR(A + i),
          frame.context.hydroState);
  }
}
