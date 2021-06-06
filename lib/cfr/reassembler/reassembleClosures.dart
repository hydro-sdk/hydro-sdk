import 'package:hydro_sdk/cfr/reassembler/hashPrototype.dart';
import 'package:hydro_sdk/cfr/reassembler/hashedPrototype.dart';
import 'package:hydro_sdk/cfr/reassembler/maybeDoPrototypeReassembly.dart';
import 'package:hydro_sdk/cfr/reassembler/maybeDoPrototypeRelocation.dart';
import 'package:hydro_sdk/cfr/reassembler/reassembleStatus.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';

ReassembleStatus reassembleClosures(
    {required Closure destination, required Closure source}) {
  ReassembleStatus res = ReassembleStatus(
      relocatedProtos: 0,
      reassembledProtos: 0,
      bailedOut: false,
      bailOutReason: "",
      reassemblyMap: []);

  List<HashedPrototype> sourceProtos = [];
  List<HashedPrototype> destinationProtos = [];

  hashProtos(sourceProtos: sourceProtos, prototype: source.proto!);
  hashProtos(sourceProtos: destinationProtos, prototype: destination.proto!);

  if (sourceProtos.length > destinationProtos.length) {
    res.bailedOut = true;
    res.bailOutReason =
        "${sourceProtos.length - destinationProtos.length} more incoming function prototypes than currently running. Hot-reload aborted";
    return res;
  }

  maybeDoPrototypeRelocation(
      reassembleStatus: res,
      destination: destination.proto!,
      sourceProtos: sourceProtos);

  maybeDoPrototypeReassembly(
      reassembleStatus: res,
      destination: destination.proto,
      sourceProtos: sourceProtos);

  return res;
}

void hashProtos(
    {required List<HashedPrototype> sourceProtos,
    required Prototype prototype}) {
  sourceProtos.add(HashedPrototype(
      hash: hashPrototype(prototype),
      hashWithoutSourceInformation:
          hashPrototype(prototype, includeSourceLocations: false),
      prototype: prototype));

  if (prototype.prototypes != null && prototype.prototypes!.isNotEmpty) {
    prototype.prototypes!.forEach((x) {
      sourceProtos.add(HashedPrototype(
          hash: hashPrototype(x),
          hashWithoutSourceInformation:
              hashPrototype(prototype, includeSourceLocations: false),
          prototype: x));

      if (x.prototypes != null && x.prototypes!.isNotEmpty) {
        hashProtos(sourceProtos: sourceProtos, prototype: x);
      }
    });
  }
}
