import 'package:hydro_sdk/cfr/buildProfile.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('', () async {
    var state1 = HydroState();

    List<String> outLines1 = [];

    state1.context.env["print"] = (List<dynamic> args) {
      outLines1
          .add(args.map((a) => Context.luaToString(a).toString()).join("\t"));
    };

    var state2 = HydroState();

    List<String> outLines2 = [];

    state2.context.env["print"] = (List<dynamic> args) {
      outLines2
          .add(args.map((a) => Context.luaToString(a).toString()).join("\t"));
    };

    HydroFunctionImpl res1 = await state1.loadFile("hot/debug.hc");
    expect(res1.closure.buildProfile, BuildProfile.debug);
    res1.pcall([], parentState: state1);

    expect(outLines1[0], "3");

    HydroFunctionImpl res2 = await state2.loadFile("hot/release.hc");
    expect(res2.closure.buildProfile, BuildProfile.release);
    res2.pcall([], parentState: state2);

    expect(outLines2[0], "3");
  });
}
