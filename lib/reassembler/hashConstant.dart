import 'package:flua/vm/const.dart';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';

List<int> hashConstant(Const constant) {
  var output = AccumulatorSink<Digest>();

  var input = sha256.startChunkedConversion(output);

  input.add(constant.toString().codeUnits);

  input.close();
  output.close();
  return output.events.single.bytes;
}
