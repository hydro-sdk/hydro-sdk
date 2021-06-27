import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/frame.dart';

@pragma('vm:prefer-inline')
@pragma('dart2js:tryInline')
void closure({required Frame frame, required int A, required int B}) {
  var proto = frame.prototype.prototypes![B];

  frame.SR(
      A,
      Closure(
        proto,
        context: frame.context,
        parent: frame,
        upvalues: List.generate(proto.upvals.length, (i) {
          var def = proto.upvals[i];
          return def.stack ? frame.openUpval(def.reg) : frame.upvalues[def.reg];
        }),
      ));
}
