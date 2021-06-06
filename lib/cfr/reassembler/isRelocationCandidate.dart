import 'package:hydro_sdk/cfr/vm/prototype.dart';

bool isRelocationCandidate(
    {required Prototype destination,
    required String destinationHashWithoutSourceInformation,
    required Prototype source,
    required String sourceHashWithoutSourceInformation}) {
  if (destinationHashWithoutSourceInformation ==
      sourceHashWithoutSourceInformation) {
    if ((destination.lineStart != source.lineStart) &&
        (destination.lineEnd != source.lineEnd)) {
      if (destination.lines!.length == source.lines!.length) {
        return true;
      }
    }
  }
  return false;
}
