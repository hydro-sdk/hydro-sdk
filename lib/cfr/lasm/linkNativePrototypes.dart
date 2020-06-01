import 'package:hydro_sdk/cfr/decode/codedump.dart';
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
    Map<String, Prototype Function({CodeDump codeDump, Prototype parent})>
        stubs}) {
  List<HashedPrototype> destinationProtos = [];

  hashProtos(sourceProtos: destinationProtos, prototype: destination.proto);

  NativeLinkStatus nativeLinkStatus =
      NativeLinkStatus(linkedNativePrototypes: 0);

  for (var i = 0; i != destinationProtos.length; ++i) {
    if (stubs[destinationProtos[i].hash] != null) {
      maybeLinkNativePrototype(
          thunk: stubs[destinationProtos[i].hash],
          prototype: destination.proto,
          target: destinationProtos[i].hash);

      nativeLinkStatus.linkedNativePrototypes++;
    }
  }

  return nativeLinkStatus;
}
