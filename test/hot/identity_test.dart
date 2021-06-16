import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/cfr/reassembler/hashInstructionBlock.dart';
import 'package:hydro_sdk/cfr/reassembler/hashPrototype.dart';
import 'package:hydro_sdk/cfr/reassembler/isRelocationCandidate.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/hydroState.dart';

void main() {
  test('', () async {
    var state1 = HydroState();

    List<String> outLines = [];

    state1.context!.env["print"] = (List<dynamic> args) {
      outLines.add(args
          .map((a) => Context.luaToString(a, hydroState: state1).toString())
          .join("\t"));
    };

    var state2 = HydroState();

    state2.context!.env["print"] = (List<dynamic> args) {
      outLines.add(args
          .map((a) => Context.luaToString(a, hydroState: state2).toString())
          .join("\t"));
    };

    var state3 = HydroState();

    state3.context!.env["print"] = (List<dynamic> args) {
      outLines.add(args
          .map((a) => Context.luaToString(a, hydroState: state3).toString())
          .join("\t"));
    };

    HydroFunctionImpl res1 = await state1.loadFile("test/hot/simple1.hc");

    var global1 = res1.closure.proto!.prototypes![0];
    var local1 = res1.closure.proto!.prototypes![1];

    HydroFunctionImpl res2 = await state2.loadFile("test/hot/simple2.hc");

    var global2 = res2.closure.proto!.prototypes![0];
    var local2 = res2.closure.proto!.prototypes![1];

    HydroFunctionImpl res3 = await state2.loadFile("test/hot/simple3.hc");

    var global3 = res3.closure.proto!.prototypes![1];
    var local3 = res3.closure.proto!.prototypes![2];

    //All 4 functions should have identical instructions
    expect(hashInstructionBlock(global1.code!),
        hashInstructionBlock(local1.code!));
    expect(hashInstructionBlock(global2.code!),
        hashInstructionBlock(local2.code!));
    expect(hashInstructionBlock(global1.code!),
        hashInstructionBlock(global2.code!));
    expect(hashInstructionBlock(global1.code!),
        hashInstructionBlock(local2.code!));
    expect(
        hashInstructionBlock(local1.code!), hashInstructionBlock(local3.code!));
    expect(hashInstructionBlock(global3.code!),
        hashInstructionBlock(global3.code!));

    expect(
        hashInstructionBlock(local1.code!), hashInstructionBlock(local1.code!));
    expect(hashInstructionBlock(global2.code!),
        hashInstructionBlock(global2.code!));
    expect(
        hashInstructionBlock(local3.code!), hashInstructionBlock(local3.code!));
    expect(hashInstructionBlock(global3.code!),
        hashInstructionBlock(global3.code!));

    expect(hashPrototype(global1), hashPrototype(global1));
    expect(hashPrototype(local1), hashPrototype(local1));

    expect(hashPrototype(global2), hashPrototype(global2));
    expect(hashPrototype(local2), hashPrototype(local2));
    expect(hashPrototype(local3), hashPrototype(local3));

    //Prototypes should differ due to different constants
    expect(hashPrototype(global1), isNot(hashPrototype(local1)));
    expect(hashPrototype(global2), isNot(hashPrototype(local2)));
    expect(hashPrototype(global1), isNot(hashPrototype(global2)));
    expect(hashPrototype(local1), isNot(hashPrototype(local2)));
    expect(hashPrototype(global2), isNot(hashPrototype(local1)));
    expect(hashPrototype(global1), isNot(hashPrototype(local2)));
    expect(hashPrototype(global1), isNot(hashPrototype(local3)));
    expect(hashPrototype(local1), isNot(hashPrototype(local3)));
    expect(hashPrototype(global1), isNot(hashPrototype(global3)));

    expect(
        isRelocationCandidate(
            destination: global1,
            source: global1,
            destinationHashWithoutSourceInformation:
                hashPrototype(global1, includeSourceLocations: false),
            sourceHashWithoutSourceInformation:
                hashPrototype(global1, includeSourceLocations: false)),
        false);
    expect(
        isRelocationCandidate(
            destination: local1,
            source: local1,
            destinationHashWithoutSourceInformation:
                hashPrototype(local1, includeSourceLocations: false),
            sourceHashWithoutSourceInformation:
                hashPrototype(local1, includeSourceLocations: false)),
        false);

    expect(
        isRelocationCandidate(
            destination: global1,
            source: global3,
            destinationHashWithoutSourceInformation:
                hashPrototype(global1, includeSourceLocations: false),
            sourceHashWithoutSourceInformation:
                hashPrototype(global3, includeSourceLocations: false)),
        true);
    expect(
        isRelocationCandidate(
            destination: global3,
            source: global1,
            destinationHashWithoutSourceInformation:
                hashPrototype(global3, includeSourceLocations: false),
            sourceHashWithoutSourceInformation:
                hashPrototype(global1, includeSourceLocations: false)),
        true);
    expect(
        isRelocationCandidate(
            destination: global2,
            source: global3,
            destinationHashWithoutSourceInformation:
                hashPrototype(global2, includeSourceLocations: false),
            sourceHashWithoutSourceInformation:
                hashPrototype(global3, includeSourceLocations: false)),
        false);
    expect(
        isRelocationCandidate(
            destination: global2,
            source: global1,
            destinationHashWithoutSourceInformation:
                hashPrototype(global2, includeSourceLocations: false),
            sourceHashWithoutSourceInformation:
                hashPrototype(global1, includeSourceLocations: false)),
        false);

    expect(
        isRelocationCandidate(
            destination: local1,
            source: local3,
            destinationHashWithoutSourceInformation:
                hashPrototype(local1, includeSourceLocations: false),
            sourceHashWithoutSourceInformation:
                hashPrototype(local3, includeSourceLocations: false)),
        true);
    expect(
        isRelocationCandidate(
            destination: local3,
            source: local1,
            destinationHashWithoutSourceInformation:
                hashPrototype(local3, includeSourceLocations: false),
            sourceHashWithoutSourceInformation:
                hashPrototype(local1, includeSourceLocations: false)),
        true);
    expect(
        isRelocationCandidate(
            destination: local2,
            source: local3,
            destinationHashWithoutSourceInformation:
                hashPrototype(local2, includeSourceLocations: false),
            sourceHashWithoutSourceInformation:
                hashPrototype(local3, includeSourceLocations: false)),
        false);
    expect(
        isRelocationCandidate(
            destination: local2,
            source: local1,
            destinationHashWithoutSourceInformation:
                hashPrototype(local2, includeSourceLocations: false),
            sourceHashWithoutSourceInformation:
                hashPrototype(local1, includeSourceLocations: false)),
        false);
  }, tags: "hot");
}
