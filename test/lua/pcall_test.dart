import 'package:hydro_sdk/cfr/builtins/loadBuiltins.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('', () async {
    var state = HydroState();
    loadBuiltins(hydroState: state, builtins: [BuiltinLib.base]);

    List<String> outLines = [];

    state.context.env["print"] = (List<dynamic> args) {
      outLines
          .add(args.map((a) => Context.luaToString(a).toString()).join("\t"));
    };

    List<String> expectedOutLines = [
      "ayy",
      "false	lua/pcall.hc:3: md",
      "69",
      "true	420"
    ];

    var res = await state.doFile("lua/pcall.hc");

    expect(res.success, true);
    expect(outLines.length, expectedOutLines.length);

    for (var i = 0; i != outLines.length; ++i) {
      expect(outLines[i], expectedOutLines[i]);
    }
  });
}
