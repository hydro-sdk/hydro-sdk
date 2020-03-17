import 'package:flua/reassembler/hashPrototype.dart';
import 'package:flua/reassembler/isReassemblyCandidate.dart';
import 'package:flua/reassembler/isRelocationCandidate.dart';
import 'package:flua/reassembler/reassemble.dart';
import 'package:flua/reassembler/relocate.dart';
import 'package:flua/vm/closure.dart';
import 'package:flua/vm/prototype.dart';
import 'package:meta/meta.dart';

class ReassembleStatus {
  int relocatedProtos;
  int reassembledProtos;
  bool bailedOut;
  String bailOutReason;

  ReassembleStatus(
      {@required this.relocatedProtos,
      @required this.reassembledProtos,
      @required this.bailedOut,
      @required this.bailOutReason});
}

class HashedPrototype {
  final String hash;
  final String hashWithoutSourceInformation;
  final Prototype prototype;

  HashedPrototype(
      {@required this.hash,
      @required this.hashWithoutSourceInformation,
      @required this.prototype});
}

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

  maybeDoRelocation(
      reassembleStatus: res,
      destination: destination.proto,
      sourceProtos: sourceProtos);

  maybeDoReassembly(
      reassembleStatus: res,
      destination: destination.proto,
      sourceProtos: sourceProtos);

  return res;
}

void maybeDoRelocation(
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
        sourceHash: sourceProtos[i].hashWithoutSourceInformation)) {
      relocate(destination: destination, source: sourceProtos[i].prototype);
      reassembleStatus.relocatedProtos++;
      break;
    }
  }
  if (destination.prototypes != null && destination.prototypes.isNotEmpty) {
    destination.prototypes.forEach((x) {
      maybeDoRelocation(
          reassembleStatus: reassembleStatus,
          destination: x,
          sourceProtos: sourceProtos);
    });
  }
}

void maybeDoReassembly(
    {@required ReassembleStatus reassembleStatus,
    @required Prototype destination,
    @required List<HashedPrototype> sourceProtos}) {
  if (destination.prototypes != null && destination.prototypes.isNotEmpty) {
    destination.prototypes.forEach((x) {
      maybeDoReassembly(
          reassembleStatus: reassembleStatus,
          destination: x,
          sourceProtos: sourceProtos);
    });
  }

  for (var i = 0; i != sourceProtos.length; ++i) {
    if (isReassemblyCandidate(destination, sourceProtos[i].prototype)) {
      reassemble(destination: destination, source: sourceProtos[i].prototype);
      reassembleStatus.reassembledProtos++;
      break;
    }
  }
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
