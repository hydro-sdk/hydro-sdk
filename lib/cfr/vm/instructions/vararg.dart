import 'package:hydro_sdk/cfr/vm/frame.dart';

@pragma('vm:prefer-inline')
@pragma('dart2js:tryInline')
void instVararg({required Frame frame, required int A, required int B}) {
  if (B > 0) {
    var i = 0;
    for (int n = A; n <= A + B - 2; n++) frame.SR(n, frame.varargs[i++]);
  } else {
    frame.setTop((A + frame.varargs.length) - (frame.prototype.params! + 1));
    if (frame.top == 0) {
      //I feel like this is a big hack
      //I can't tell if setting to top to zero and then trying to call vararg is a bug or not
      //This situation causes some Haxe generated _hx helpers to fail at runtime
      //The below line fixes it
      frame.setTop(A + frame.varargs.length);
    }
    var i = A;
    for (int n = frame.prototype.params!; n < frame.varargs.length; n++)
      frame.SR(i++, frame.varargs[n]);
  }
}
