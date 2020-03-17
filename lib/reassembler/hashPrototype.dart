import 'package:flua/reassembler/hashConstants.dart';
import 'package:flua/reassembler/hashInstructionBlock.dart';
import 'package:flua/reassembler/hashLocals.dart';
import 'package:flua/reassembler/hashUpvalues.dart';
import 'package:flua/vm/prototype.dart';
import 'package:flua/vm/const.dart';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';

String hashPrototype(Prototype prototype,
    {bool includeSourceLocations = true}) {
  var output = AccumulatorSink<Digest>();

  var input = sha256.startChunkedConversion(output);

  input.add([prototype.varag]);
  input.add([prototype.registers]);
  var instHash = hashInstructionBlock(prototype.code);
  input.add(prototype.rawCode);
  var constantsHash = hashConstants(prototype.constants);
  var constScopeHash =
      hashConstants(prototype.constantScope.toList().cast<Const>());
  var upvalueHash = hashUpvalues(prototype.upvals);
  var localHash = hashLocals(prototype.locals);

  if (includeSourceLocations) {
    input.add(prototype.lines);
    input.add([
      prototype.lineStart,
      prototype.lineEnd,
      ...prototype.source.codeUnits
    ]);
  }

  input.add(instHash);
  input.add(constantsHash);
  input.add(constScopeHash);
  input.add(upvalueHash);
  input.add(localHash);

  input.close();
  output.close();

  return output.events.single.toString();
}
