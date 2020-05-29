import 'package:hydro_sdk/cfr/decode/codedump.dart';
import 'package:hydro_sdk/cfr/lasm/stub.dart';
import 'package:hydro_sdk/cfr/lasm/maybeLinkNativePrototype.dart';
import 'package:hydro_sdk/cfr/reassembler/hashedPrototype.dart';
import 'package:hydro_sdk/cfr/reassembler/reassembleClosures.dart';
import 'package:hydro_sdk/cfr/vm/closure.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';
import 'package:meta/meta.dart';

class NativeLinkStatus {
  int linkedNativePrototypes;

  NativeLinkStatus({@required this.linkedNativePrototypes});
}

NativeLinkStatus linkNativePrototypes(
    {@required Closure destination,
    Map<String, LasmStub Function({CodeDump codeDump, Prototype parent})>
        stubs}) {
  List<HashedPrototype> destinationProtos = [];

  hashProtos(sourceProtos: destinationProtos, prototype: destination.proto);

  destinationProtos.forEach((x) {
    if (x.hash ==
        "7e9d338625474a4ed9ab253199d7a1f14ff2579804e12f2164ad9a232a91853d") {
      print(x);
    }
  });

  NativeLinkStatus nativeLinkStatus =
      NativeLinkStatus(linkedNativePrototypes: 0);

  for (var i = 0; i != destinationProtos.length; ++i) {
    if (stubs[destinationProtos[i].hash] != null) {
      destinationProtos[i].prototype = stubs[destinationProtos[i].hash](
          codeDump: destinationProtos[i].prototype.root,
          parent: destinationProtos[i].prototype.parent);
      nativeLinkStatus.linkedNativePrototypes++;
    }
  }

  // maybeLinkNativePrototype(
  //     nativeLinkStatus: nativeLinkStatus,
  //     destination: destination.proto,
  //     stubs: stubs);

  return nativeLinkStatus;
}
