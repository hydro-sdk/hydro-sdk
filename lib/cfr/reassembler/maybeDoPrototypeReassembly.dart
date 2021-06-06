import 'package:hydro_sdk/cfr/reassembler/hashPrototype.dart';
import 'package:hydro_sdk/cfr/reassembler/hashedPrototype.dart';
import 'package:hydro_sdk/cfr/reassembler/isReassemblyCandidate.dart';
import 'package:hydro_sdk/cfr/reassembler/reassemblePrototype.dart';
import 'package:hydro_sdk/cfr/reassembler/reassembleStatus.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';

void maybeDoPrototypeReassembly(
    {required ReassembleStatus reassembleStatus,
    required Prototype? destination,
    required List<HashedPrototype> sourceProtos}) {
  if (reassembleStatus.bailedOut) {
    return;
  }
  for (var i = 0; i != sourceProtos.length; ++i) {
    if (isReassemblyCandidate(destination!, sourceProtos[i].prototype)) {
      String beforeHash = hashPrototype(destination);
      reassemblePrototype(
          destination: destination, source: sourceProtos[i].prototype);
      reassembleStatus.reassembledProtos++;

      String afterHash = hashPrototype(destination);

      if (beforeHash != afterHash) {
        reassembleStatus.reassemblyMap.add([afterHash, beforeHash]);
      }

      break;
    }
  }
  if (destination!.prototypes != null && destination.prototypes!.isNotEmpty) {
    destination.prototypes!.forEach((x) {
      maybeDoPrototypeReassembly(
          reassembleStatus: reassembleStatus,
          destination: x,
          sourceProtos: sourceProtos);
    });
  }
}
