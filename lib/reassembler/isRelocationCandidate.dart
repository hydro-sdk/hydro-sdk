import "package:meta/meta.dart";

import 'package:flua/vm/prototype.dart';

bool isRelocationCandidate(
    {@required Prototype destination,
    @required String destinationHashWithoutSourceInformation,
    @required Prototype source,
    @required String sourceHashWithoutSourceInformation}) {
  if (destinationHashWithoutSourceInformation ==
      sourceHashWithoutSourceInformation) {
    if (destination.lineStart != source.lineStart) {
      return true;
    }
  }
  return false;
}
