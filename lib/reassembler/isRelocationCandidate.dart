import 'package:flua/reassembler/hashPrototype.dart';
import 'package:flua/vm/prototype.dart';

bool isRelocationCandidate(Prototype a, Prototype b) {
  var aHash = hashPrototype(a, includeSourceLocations: false);
  var bHash = hashPrototype(b, includeSourceLocations: false);

  if (aHash == bHash) {
    if (a.lineStart != b.lineStart) {
      return true;
    }
  }
  return false;
}