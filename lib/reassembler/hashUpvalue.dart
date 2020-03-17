import 'package:flua/vm/upvaldef.dart';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';

List<int> hashUpvalue(UpvalDef upvalue) {
  var output = AccumulatorSink<Digest>();

  var input = sha256.startChunkedConversion(output);

  input.add(upvalue.name.codeUnits);
  input.add(upvalue.stack.toString().codeUnits);
  input.add([upvalue.reg]);

  input.close();
  output.close();
  return output.events.single.bytes;
}