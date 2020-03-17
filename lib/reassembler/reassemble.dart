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

ReassembleStatus reassemble(
    {@required Closure destination, @required Closure source}) {
  ReassembleStatus res = ReassembleStatus(relocatedProtos: 0);

  Map<String, Prototype> sourceProtos = {};

  _hashProtos(sourceProtos: sourceProtos, prototype: source.proto);

  return res;
}

void maybeDoRelocation(
    {@required ReassembleStatus reassembleStatus,
    @required Prototype destination,
    @required Map<String, Prototype> sourceProtos}) {
  for (var i = 0; i != sourceProtos.length; ++i) {
    if (isRelocationCandidate(destination, sourceProtos[i])) {
      relocate(destination: destination, source: sourceProtos[i]);
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
    {@required Map<String, Prototype> sourceProtos,
    @required Prototype prototype}) {
  sourceProtos[hashPrototype(prototype)] = prototype;

  prototype.prototypes.forEach((x) {
    sourceProtos[hashPrototype(x)] = x;

    if (x.prototypes != null && x.prototypes.isNotEmpty) {
      _hashProtos(sourceProtos: sourceProtos, prototype: x);
    }
  });
}
