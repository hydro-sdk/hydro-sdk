import 'package:flua/reassembler/hashConstants.dart';
import 'package:flua/reassembler/hashInstructionBlock.dart';
import 'package:flua/reassembler/hashUpvalues.dart';
import 'package:flua/vm/prototype.dart';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';

String hashPrototype(Prototype prototype,
    {bool includeSourceLocations = true}) {
  var output = AccumulatorSink<Digest>();

  var input = sha256.startChunkedConversion(output);

  var instHash = hashInstructionBlock(prototype.code);
  var constantsHash = hashConstants(prototype.constants);
  var upvalueHash = hashUpvalues(prototype.upvals);

  if (includeSourceLocations) {
    input.add(prototype.lines);
    input.add([prototype.lineStart, prototype.lineEnd]);
  }

  input.add(instHash);
  input.add(constantsHash);
  input.add(upvalueHash);

  input.close();
  output.close();

  return output.events.single.toString();
}
