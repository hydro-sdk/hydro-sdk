import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/cfr/builtins/loadBuiltins.dart';
import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/hydroState.dart';

void main() {
  test('', () async {
    var state = HydroState();
    loadBuiltins(hydroState: state);

    List<String> outLines = [];

    state.context!.env["print"] = (List<dynamic> args) {
      outLines.add(args
          .map((a) => Context.luaToString(a, hydroState: state).toString())
          .join("\t"));
      return [];
    };

    List<String> expectedOutLines = [
      "e91c254ad58860a02c788dfb5c1a65d6a8846ab1dc649631c7db16fef4af2dec"
    ];

    var res = await state.doFile("test/lua/sha256.hc");

    if (!res.success) {
      print(res.values);
    }

    expect(res.success, true);
    expect(outLines.length, expectedOutLines.length);

    for (var i = 0; i != outLines.length; ++i) {
      expect(outLines[i], expectedOutLines[i]);
    }
  }, tags: "lua");
}
