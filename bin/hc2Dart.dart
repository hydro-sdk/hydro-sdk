import 'dart:io';

import 'package:path/path.dart';

import 'package:hydro_sdk/cfr/lasm/generate.dart';
import 'package:hydro_sdk/cfr/reassembler/hashedPrototype.dart';
import 'package:hydro_sdk/cfr/reassembler/reassembleClosures.dart';
import 'package:hydro_sdk/hydroState.dart';

void main(List<String> args) async {
  List<String> hcPaths =
      args?.map((e) => extension(e) == ".hc" ? e : null)?.toList();
  hcPaths?.removeWhere((x) => x == null);

  if (hcPaths?.isEmpty ?? true) {
    print("Got no bytecode files");
    exit(1);
  }

  print("Got ${hcPaths.length} bytecode files");

  List<HashedPrototype> protos = [];

  for (var i = 0; i != hcPaths.length; ++i) {
    HydroState state = HydroState();
    var closure = await state.loadBuffer(
        buffer: File(hcPaths[i]).readAsBytesSync(),
        name: hcPaths[i],
        linkStatus: null,
        thunks: null);
    hashProtos(sourceProtos: protos, prototype: closure.closure.proto);
  }

  print("${protos.length} total function prototypes");

  List<HashedPrototype> candidatePrototypes =
      protos.where((element) => element.prototype.prototypes.isEmpty)?.toList();

  print("${candidatePrototypes.length} candidates for transpilation");

  var generator = LStubGenerator(prototypes: candidatePrototypes);

  print("${generator.protoypes.length} unqiue candidates to be transpiled");

  File("lib/buildStub.dart").writeAsStringSync(generator.generate());

  // HydroState counter = HydroState();
  // var counterClosure = await counter.loadBuffer(
  //     buffer: File("assets/examples/counter.hc").readAsBytesSync(),
  //     name: "counter",
  //     linkStatus: null,
  //     thunks: null);

  // List<HashedPrototype> protos = [];
  // hashProtos(sourceProtos: protos, prototype: counterClosure.closure.proto);

  // File("lib/buildStub.dart").writeAsStringSync(LStubGenerator(
  //         prototypes:
  //             protos.where((x) => x.prototype.prototypes.isEmpty).toList())
  //     .generate());
}
