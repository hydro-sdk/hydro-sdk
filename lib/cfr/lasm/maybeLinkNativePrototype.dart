import 'package:hydro_sdk/cfr/decode/codedump.dart';
import 'package:hydro_sdk/cfr/lasm/stub.dart';
import 'package:hydro_sdk/cfr/reassembler/hashPrototype.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';
import 'package:meta/meta.dart';
import 'package:hydro_sdk/cfr/lasm/linkNativePrototypes.dart';

void maybeLinkNativePrototype({
  @required LasmStub Function({CodeDump codeDump, Prototype parent}) thunk,
  @required Prototype prototype,
  @required String target,
}) {
  String destinationHash = prototype.hash;
  if (destinationHash == null) {
    prototype.hash = hashPrototype(prototype, includeSourceLocations: true);
    destinationHash = prototype.hash;
  }

  if (destinationHash == target) {
    prototype = thunk(codeDump: prototype.root, parent: prototype.parent);
    // print("Found target");
    return;
  }

  if (prototype.prototypes != null && prototype.prototypes.isNotEmpty) {
    prototype.prototypes.forEach((x) {
      maybeLinkNativePrototype(thunk: thunk, prototype: x, target: target);
    });
  }
}
