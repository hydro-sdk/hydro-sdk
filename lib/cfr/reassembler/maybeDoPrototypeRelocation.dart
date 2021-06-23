import 'package:hydro_sdk/cfr/reassembler/hashPrototype.dart';
import 'package:hydro_sdk/cfr/reassembler/hashedPrototype.dart';
import 'package:hydro_sdk/cfr/reassembler/isRelocationCandidate.dart';
import 'package:hydro_sdk/cfr/reassembler/reassembleStatus.dart';
import 'package:hydro_sdk/cfr/reassembler/relocatePrototype.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';

void maybeDoPrototypeRelocation(
    {required ReassembleStatus reassembleStatus,
    required Prototype destination,
    required List<HashedPrototype> sourceProtos}) {
  String destinationHash =
      hashPrototype(destination, includeSourceLocations: false);
  if (reassembleStatus.bailedOut) {
    return;
  }
  for (var i = 0; i != sourceProtos.length; ++i) {
    if (isRelocationCandidate(
        destination: destination,
        destinationHashWithoutSourceInformation: destinationHash,
        source: sourceProtos[i].prototype,
        sourceHashWithoutSourceInformation:
            sourceProtos[i].hashWithoutSourceInformation)) {
      relocatePrototype(
          reassembleStatus: reassembleStatus,
          destination: destination,
          source: sourceProtos[i].prototype);
      reassembleStatus.relocatedProtos++;
      break;
    }
  }
  if (destination.prototypes != null && destination.prototypes!.isNotEmpty) {
    destination.prototypes!.forEach((x) {
      maybeDoPrototypeRelocation(
          reassembleStatus: reassembleStatus,
          destination: x,
          sourceProtos: sourceProtos);
    });
  }
}
