import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';

import 'package:hydro_sdk/cfr/reassembler/hashPrototype.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/upVal.dart';

String hashClosure(Closure closure, {bool includeSourceLocations = true}) {
  var output = AccumulatorSink<Digest>();

  var input = sha256.startChunkedConversion(output);

  input.add([
    ...(hashPrototype(closure.proto!,
            includeSourceLocations: includeSourceLocations)
        .codeUnits),
    ...(closure.upvalues
            ?.map((x) => _hashUpvalues([x]))
            .reduce((x, k) => [
                  ...x,
                  ...k,
                ])
            .toList() ??
        [])
  ]);

  input.close();
  output.close();
  return output.events.single.toString();
}

List<int> _hashUpvalue(Upval upvalue) {
  var output = AccumulatorSink<Digest>();

  var input = sha256.startChunkedConversion(output);

  input.add([
    upvalue.open == true
        ? 2
        : upvalue.open == false
            ? 1
            : 0
  ]);

  if (upvalue.reg != null) {
    input.add([upvalue.reg!]);
  }

  input.add([
    ...(upvalue.registers
            ?.map((x) => x.toString())
            .map((x) => x.codeUnits)
            .reduce((x, k) => [
                  ...x,
                  ...k,
                ])
            .toList() ??
        [])
  ]);
  input.add(upvalue.storage.toString().codeUnits);

  input.close();
  output.close();
  return output.events.single.bytes;
}

List<int> _hashUpvalues(List<Upval?> upvalues) {
  var output = AccumulatorSink<Digest>();

  var input = sha256.startChunkedConversion(output);

  var upvalHash = upvalues.map((x) => _hashUpvalue(x!));

  upvalHash.forEach((x) => input.add(x));

  input.close();
  output.close();
  return output.events.single.bytes;
}
