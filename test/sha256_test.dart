import 'package:flua/src/5_2/context.dart';
import 'package:flua/src/5_2/state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('', () async {
    var state = LuaState();

    List<String> outLines = [];

    state.context.env["print"] = (List<dynamic> args) {
      outLines
          .add(args.map((a) => Context.luaToString(a).toString()).join("\t"));
    };

    List<String> expectedOutLines = [
      "e91c254ad58860a02c788dfb5c1a65d6a8846ab1dc649631c7db16fef4af2dec"
    ];

    var res = await state.doFile("sha256.lc");

    expect(res.success, true);
    expect(outLines.length, expectedOutLines.length);

    for (var i = 0; i != outLines.length; ++i) {
      expect(outLines[i], expectedOutLines[i]);
    }
  });
}
