import 'package:hydro_sdk/cfr/vm/frame.dart';
import 'package:meta/meta.dart';

void loadbool(
    {@required Frame frame,
    @required int A,
    @required int B,
    @required int C}) {
  frame.SR(A, B != 0);
  if (C != 0) frame.programCounter++;
}
