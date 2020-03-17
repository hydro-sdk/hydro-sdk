import 'package:flua/reassembler/hashUpvalue.dart';
import 'package:flua/vm/upvaldef.dart';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';

List<int> hashUpvalues(List<UpvalDef> upvalues) {
  var output = AccumulatorSink<Digest>();

  var input = sha256.startChunkedConversion(output);

  var upvalHash = upvalues.map((x) => hashUpvalue(x));

  upvalHash.forEach((x) => input.add(x));

  input.close();
  output.close();
  return output.events.single.bytes;
}
