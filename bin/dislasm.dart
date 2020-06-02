import 'dart:io';
import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/cfr/decode/decoder.dart';
import 'package:hydro_sdk/cfr/decode/disassemble.dart';
import 'package:hydro_sdk/cfr/lasm/generate.dart';
import 'package:hydro_sdk/cfr/reassembler/hashPrototype.dart';
import 'package:hydro_sdk/cfr/reassembler/hashedPrototype.dart';
import 'package:hydro_sdk/cfr/reassembler/reassembleClosures.dart';
import 'package:hydro_sdk/cfr/vm/prototype.dart';
import 'package:hydro_sdk/hydroState.dart';

void main() {
  testWidgets('', (WidgetTester tester) async {
    // print(disassemble(Decoder(File("dist/counter.hc").readAsBytesSync().buffer)
    //     .readCodeDump()));
    // await File("counter.out").writeAsString(disassemble(
    //     Decoder(File("dist/counter.hc").readAsBytesSync().buffer)
    //         .readCodeDump()),flush: true);
    // await File("hotel.out").writeAsString(disassemble(
    //     Decoder(File("dist/hotel-booking.hc").readAsBytesSync().buffer)
    //         .readCodeDump()));

    // HydroState hotelBooking = HydroState();
    // var hotelBookingClosure = await hotelBooking.loadBuffer(
    //     File("dist/hotel-booking.hc").readAsBytesSync(), "hotel-booking");

    // HydroState counter = HydroState();
    // var counterClosure = await counter.loadBuffer(
    //     File("dist/counter.hc").readAsBytesSync(), "counter");

    // hotelBookingClosure.closure.proto.prototypes.forEach((x) {
    //   x.constants.forEach((y) {
    //     if (y.value == "__TS__TypeOf") {
    //       print("__TS__TypeOf");
    //     }
    //   });
    //   counterClosure.closure.proto.prototypes.forEach((k) {
    //     print("${hashPrototype(x)} ${hashPrototype(k)}");
    //   });
    // });

    HydroState counter = HydroState();
    var counterClosure = await counter.loadBuffer(
        buffer: File("dist/counter.hc").readAsBytesSync(),
        name: "counter",
        linkStatus: null,
        thunks: null);

    List<HashedPrototype> protos = [];
    hashProtos(sourceProtos: protos, prototype: counterClosure.closure.proto);

    File("lib/buildStub.dart").writeAsStringSync(LStubGenerator(
            prototypes:
                protos.where((x) => x.prototype.prototypes.isEmpty).toList())
        .generate());
  });
}
