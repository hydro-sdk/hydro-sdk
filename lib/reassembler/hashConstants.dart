import 'package:flua/reassembler/hashConstant.dart';
import 'package:flua/vm/const.dart';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';

List<int> hashConstants(List<Const> constants) {
  var output = AccumulatorSink<Digest>();

  var input = sha256.startChunkedConversion(output);

  var constHash = constants.map((x) => hashConstant(x));

  constHash.forEach((x) => input.add(x));

  input.close();
  output.close();
  return output.events.single.bytes;
}