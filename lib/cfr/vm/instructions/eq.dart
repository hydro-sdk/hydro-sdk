import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/cfr/vm/frame.dart';
import 'package:meta/meta.dart';

void eq(
    {@required Frame frame,
    @required int A,
    @required int B,
    @required int C}) {
  if (Context.checkEQ(frame.RK(B), frame.RK(C)) == (A != 0)) {
    frame.programCounter += frame.getNextJump() + 1;
  } else {
    frame.programCounter++;
  }
}
