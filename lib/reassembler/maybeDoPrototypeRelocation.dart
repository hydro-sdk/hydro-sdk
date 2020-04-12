import 'package:hydro_sdk/reassembler/hashPrototype.dart';
import 'package:hydro_sdk/reassembler/hashedPrototype.dart';
import 'package:hydro_sdk/reassembler/isRelocationCandidate.dart';
import 'package:hydro_sdk/reassembler/reassembleStatus.dart';
import 'package:hydro_sdk/reassembler/relocatePrototype.dart';
import 'package:hydro_sdk/vm/prototype.dart';
import 'package:meta/meta.dart';

void maybeDoPrototypeRelocation(
    {@required ReassembleStatus reassembleStatus,
    @required Prototype destination,
    @required List<HashedPrototype> sourceProtos}) {
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
  if (destination.prototypes != null && destination.prototypes.isNotEmpty) {
    destination.prototypes.forEach((x) {
      maybeDoPrototypeRelocation(
          reassembleStatus: reassembleStatus,
          destination: x,
          sourceProtos: sourceProtos);
    });
  }
}
