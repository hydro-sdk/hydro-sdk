import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';

import 'package:hydro_sdk/cfr/vm/const.dart';

List<int> hashConstant(Const constant) {
  var output = AccumulatorSink<Digest>();

  var input = sha256.startChunkedConversion(output);

  input.add(constant.toString().codeUnits);

  input.close();
  output.close();
  return output.events.single.bytes;
}
