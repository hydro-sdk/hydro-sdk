import 'package:flua/reassembler/hashPrototype.dart';
import 'package:flua/reassembler/hashedPrototype.dart';
import 'package:flua/reassembler/isReassemblyCandidate.dart';
import 'package:flua/reassembler/isRelocationCandidate.dart';
import 'package:flua/reassembler/maybeDoPrototypeReassembly.dart';
import 'package:flua/reassembler/maybeDoPrototypeRelocation.dart';
import 'package:flua/reassembler/reassemblePrototype.dart';
import 'package:flua/reassembler/reassembleStatus.dart';
import 'package:flua/reassembler/relocate.dart';
import 'package:flua/vm/closure.dart';
import 'package:flua/vm/prototype.dart';
import 'package:meta/meta.dart';

ReassembleStatus reassembleClosures(
    {@required Closure destination, @required Closure source}) {
  ReassembleStatus res = ReassembleStatus(
      relocatedProtos: 0,
      reassembledProtos: 0,
      bailedOut: false,
      bailOutReason: "");

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
