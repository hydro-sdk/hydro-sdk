import 'package:hydro_sdk/reassembler/hashPrototype.dart';
import 'package:hydro_sdk/reassembler/hashedPrototype.dart';
import 'package:hydro_sdk/reassembler/maybeDoPrototypeReassembly.dart';
import 'package:hydro_sdk/reassembler/maybeDoPrototypeRelocation.dart';
import 'package:hydro_sdk/reassembler/reassembleStatus.dart';
import 'package:hydro_sdk/vm/closure.dart';
import 'package:hydro_sdk/vm/prototype.dart';
import 'package:meta/meta.dart';

ReassembleStatus reassembleClosures(
    {@required Closure destination, @required Closure source}) {
  ReassembleStatus res = ReassembleStatus(
      relocatedProtos: 0,
      reassembledProtos: 0,
      bailedOut: false,
      bailOutReason: "",
      reassemblyMap: []);

  List<HashedPrototype> sourceProtos = [];
  List<HashedPrototype> destinationProtos = [];

  _hashProtos(sourceProtos: sourceProtos, prototype: source.proto);
  _hashProtos(sourceProtos: destinationProtos, prototype: destination.proto);

  if (sourceProtos.length > destinationProtos.length) {
    res.bailedOut = true;
    res.bailOutReason =
        "${sourceProtos.length - destinationProtos.length} more incoming function prototypes than currently running. Hot-reload aborted";
    return res;
  }

  maybeDoPrototypeRelocation(
      reassembleStatus: res,
      destination: destination.proto,
      sourceProtos: sourceProtos);

  maybeDoPrototypeReassembly(
      reassembleStatus: res,
      destination: destination.proto,
      sourceProtos: sourceProtos);

  return res;
}

void _hashProtos(
    {@required List<HashedPrototype> sourceProtos,
    @required Prototype prototype}) {
  sourceProtos.add(HashedPrototype(
      hash: hashPrototype(prototype),
      hashWithoutSourceInformation:
          hashPrototype(prototype, includeSourceLocations: false),
      prototype: prototype));

  if (prototype.prototypes != null && prototype.prototypes.isNotEmpty) {
    prototype.prototypes.forEach((x) {
      sourceProtos.add(HashedPrototype(
          hash: hashPrototype(x),
          hashWithoutSourceInformation:
              hashPrototype(prototype, includeSourceLocations: false),
          prototype: x));

      if (x.prototypes != null && x.prototypes.isNotEmpty) {
        _hashProtos(sourceProtos: sourceProtos, prototype: x);
      }
    });
  }
}
