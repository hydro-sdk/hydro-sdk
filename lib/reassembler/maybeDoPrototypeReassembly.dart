import 'package:flua/reassembler/hashPrototype.dart';
import 'package:flua/reassembler/hashedPrototype.dart';
import 'package:flua/reassembler/isReassemblyCandidate.dart';
import 'package:flua/reassembler/reassemblePrototype.dart';
import 'package:flua/reassembler/reassembleStatus.dart';
import 'package:flua/vm/prototype.dart';
import 'package:meta/meta.dart';

void maybeDoPrototypeReassembly(
    {@required ReassembleStatus reassembleStatus,
    @required Prototype destination,
    @required List<HashedPrototype> sourceProtos}) {
  if (reassembleStatus.bailedOut) {
    return;
  }
  for (var i = 0; i != sourceProtos.length; ++i) {
    if (isReassemblyCandidate(destination, sourceProtos[i].prototype)) {
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
  if (destination.prototypes != null && destination.prototypes.isNotEmpty) {
    destination.prototypes.forEach((x) {
      maybeDoPrototypeReassembly(
          reassembleStatus: reassembleStatus,
          destination: x,
          sourceProtos: sourceProtos);
    });
  }
}
