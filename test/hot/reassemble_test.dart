import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/cfr/reassembler/reassembleClosures.dart';
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

    HydroFunctionImpl res2 = await state2.loadFile("test/hot/simple2.hc");

    HydroFunctionImpl res3 = await state2.loadFile("test/hot/simple3.hc");

    var res =
        reassembleClosures(destination: res1.closure, source: res2.closure);
    expect(res.relocatedProtos, 1);
    expect(res.reassembledProtos, 3);
    expect(res.reassemblyMap, isNotNull);
    expect(res.reassemblyMap.isNotEmpty, true);

    res = reassembleClosures(destination: res1.closure, source: res3.closure);
    expect(res.bailedOut, true);
    expect(res.relocatedProtos, 0);
    expect(res.reassembledProtos, 0);

    res = reassembleClosures(destination: res2.closure, source: res3.closure);
    expect(res.relocatedProtos, 0);
  }, tags: "hot");
}
