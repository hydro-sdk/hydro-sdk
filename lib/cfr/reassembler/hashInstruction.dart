import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';

import 'package:hydro_sdk/cfr/vm/inst.dart';

List<int> hashInstruction(Inst inst) {
  var output = AccumulatorSink<Digest>();

  var input = sha256.startChunkedConversion(output);

  input.add([
    inst.OP,
    inst.A,
    inst.B,
    inst.C,
  ]);

  input.close();
  output.close();
  return output.events.single.bytes;
}
