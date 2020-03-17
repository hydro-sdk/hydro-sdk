import 'package:flua/reassembler/hashLocal.dart';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:flua/reassembler/hashPrototype.dart';
import 'package:flua/vm/local.dart';
import 'package:flua/vm/prototype.dart';

List<int> hashPrototypes(List<Prototype> prototypes) {
  var output = AccumulatorSink<Digest>();

  var input = sha256.startChunkedConversion(output);

  var prototypeHash = prototypes.map((x) => hashPrototype(x));

  prototypeHash.forEach((x) => input.add(x.codeUnits));

  input.close();
  output.close();
  return output.events.single.bytes;
}
