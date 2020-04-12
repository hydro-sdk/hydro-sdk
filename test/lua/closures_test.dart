import 'package:hydro_sdk/cfr/vm/context.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('', () async {
    var state = HydroState();

    List<String> outLines = [];

    state.context.env["print"] = (List<dynamic> args) {
      outLines
          .add(args.map((a) => Context.luaToString(a).toString()).join("\t"));
    };

    List<String> expectedOutLines = [
      "1",
      "12",
      "123",
      "2",
      "2",
      "13",
      "42",
      "1234",
      "42",
      "421	422	423",
      "691	692	693",
      "421	422	423"
    ];

    var res = await state.doFile("lua/closures.lc");

    expect(res.success, true);
    expect(outLines.length, expectedOutLines.length);

    for (var i = 0; i != outLines.length; ++i) {
      expect(outLines[i], expectedOutLines[i]);
    }
  });
}
