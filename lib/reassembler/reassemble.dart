import 'package:flua/reassembler/hashPrototype.dart';
import 'package:flua/reassembler/isRelocationCandidate.dart';
import 'package:flua/reassembler/relocate.dart';
import 'package:flua/vm/closure.dart';
import 'package:flua/vm/prototype.dart';
import 'package:meta/meta.dart';

class ReassembleStatus {
  int relocatedProtos;

  ReassembleStatus({@required this.relocatedProtos});
}

class HashedPrototype {
  final String hash;
  final Prototype prototype;

  HashedPrototype({@required this.hash, @required this.prototype});
}

ReassembleStatus reassemble(
    {@required Closure destination, @required Closure source}) {
  ReassembleStatus res = ReassembleStatus(relocatedProtos: 0);

  List<HashedPrototype> sourceProtos = [];

  _hashProtos(sourceProtos: sourceProtos, prototype: source.proto);

  maybeDoRelocation(
      reassembleStatus: res,
      destination: destination.proto,
      sourceProtos: sourceProtos);

  return res;
}

void maybeDoRelocation(
    {@required ReassembleStatus reassembleStatus,
    @required Prototype destination,
    @required List<HashedPrototype> sourceProtos}) {
  for (var i = 0; i != sourceProtos.length; ++i) {
    if (isRelocationCandidate(destination, sourceProtos[i].prototype)) {
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

void _hashProtos(
    {@required List<HashedPrototype> sourceProtos,
    @required Prototype prototype}) {
  sourceProtos.add(
      HashedPrototype(hash: hashPrototype(prototype), prototype: prototype));

  if (prototype.prototypes != null && prototype.prototypes.isNotEmpty) {
    prototype.prototypes.forEach((x) {
      sourceProtos.add(HashedPrototype(hash: hashPrototype(x), prototype: x));

      if (x.prototypes != null && x.prototypes.isNotEmpty) {
        _hashProtos(sourceProtos: sourceProtos, prototype: x);
      }
    });
  }
}
