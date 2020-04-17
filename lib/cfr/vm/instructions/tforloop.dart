import 'package:hydro_sdk/cfr/vm/frame.dart';
import 'package:meta/meta.dart';

void tforloop({@required Frame frame, @required int A, @required int B}) {
  if (frame.GR(A + 1) != null) {
    frame.SR(A, frame.GR(A + 1));
    frame.programCounter += B;
  }
}
