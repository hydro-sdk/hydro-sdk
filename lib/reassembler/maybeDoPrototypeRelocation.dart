import 'package:flua/reassembler/hashPrototype.dart';
import 'package:flua/reassembler/hashedPrototype.dart';
import 'package:flua/reassembler/isRelocationCandidate.dart';
import 'package:flua/reassembler/reassembleStatus.dart';
import 'package:flua/reassembler/relocatePrototype.dart';
import 'package:flua/vm/prototype.dart';
import 'package:meta/meta.dart';

void maybeDoPrototypeRelocation(
    {@required ReassembleStatus reassembleStatus,
    @required Prototype destination,
    @required List<HashedPrototype> sourceProtos}) {
  String destinationHash =
      hashPrototype(destination, includeSourceLocations: false);
  for (var i = 0; i != sourceProtos.length; ++i) {
    if (isRelocationCandidate(
        destination: destination,
        destinationHashWithoutSourceInformation: destinationHash,
        source: sourceProtos[i].prototype,
        sourceHashWithoutSourceInformation: sourceProtos[i].hashWithoutSourceInformation)) {
      relocatePrototype(destination: destination, source: sourceProtos[i].prototype);
      reassembleStatus.relocatedProtos++;
      break;
    }
  }
  if (destination.prototypes != null && destination.prototypes.isNotEmpty) {
    destination.prototypes.forEach((x) {
      maybeDoPrototypeRelocation(
          reassembleStatus: reassembleStatus,
          destination: x,
          sourceProtos: sourceProtos);
    });
  }
}