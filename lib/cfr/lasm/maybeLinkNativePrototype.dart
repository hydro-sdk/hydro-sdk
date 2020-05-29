import 'package:hydro_sdk/cfr/decode/codedump.dart';
import 'package:hydro_sdk/cfr/lasm/stub.dart';
import 'package:hydro_sdk/cfr/reassembler/hashPrototype.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';
import 'package:meta/meta.dart';
import 'package:hydro_sdk/cfr/lasm/linkNativePrototypes.dart';

void maybeLinkNativePrototype(
    {@required
        NativeLinkStatus nativeLinkStatus,
    @required
        Prototype destination,
    @required
        Map<String, LasmStub Function({CodeDump codeDump, Prototype parent})>
            stubs}) {
  if (stubs == null) {
    return;
  }
  String destinationHash =
      hashPrototype(destination, includeSourceLocations: false);

 

  if (destination.prototypes != null && destination.prototypes.isNotEmpty) {
    for (var i = 0; i != destination.prototypes.length; ++i) {
      maybeLinkNativePrototype(
          nativeLinkStatus: nativeLinkStatus,
          destination: destination.prototypes[i],
          stubs: stubs);
    }
  }

   if (destinationHash ==
      "7e9d338625474a4ed9ab253199d7a1f14ff2579804e12f2164ad9a232a91853d") {
    print(destinationHash);
  }

  if (stubs[destinationHash] != null) {
    destination = stubs[destinationHash](
        codeDump: destination.root, parent: destination.parent);
    nativeLinkStatus.linkedNativePrototypes++;
  }
}
