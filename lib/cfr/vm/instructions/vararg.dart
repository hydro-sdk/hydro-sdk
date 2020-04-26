import 'package:hydro_sdk/cfr/vm/frame.dart';
import 'package:meta/meta.dart';

@pragma('vm:prefer-inline')
@pragma('dart2js:tryInline')
void vararg({@required Frame frame, @required int A, @required int B}) {
  if (B > 0) {
    var i = 0;
    for (int n = A; n <= A + B - 2; n++) frame.SR(n, frame.varargs[i++]);
  } else {
    frame.setTop(A + frame.varargs.length - (frame.prototype.params + 1));
    var i = A;
    for (int n = frame.prototype.params; n < frame.varargs.length; n++)
      frame.SR(i++, frame.varargs[n]);
  }
}
