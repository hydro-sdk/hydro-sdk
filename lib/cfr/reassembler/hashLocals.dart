import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';

import 'package:hydro_sdk/cfr/reassembler/hashLocal.dart';
import 'package:hydro_sdk/cfr/vm/local.dart';

List<int> hashLocals(List<Local> locals) {
  var output = AccumulatorSink<Digest>();

  var input = sha256.startChunkedConversion(output);

  var localHash = locals.map((x) => hashLocal(x));

  localHash.forEach((x) => input.add(x));

  input.close();
  output.close();
  return output.events.single.bytes;
}
