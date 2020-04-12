import 'package:hydro_sdk/cfr/reassembler/hashInstruction.dart';
import 'package:hydro_sdk/cfr/vm/inst.dart';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';

List<int> hashInstructionBlock(InstBlock instBlock) {
  var output = AccumulatorSink<Digest>();

  var input = sha256.startChunkedConversion(output);

  var instHash = instBlock.map((x) => hashInstruction(x));

  instHash.forEach((x) => input.add(x));

  input.close();
  output.close();
  return output.events.single.bytes;
}
