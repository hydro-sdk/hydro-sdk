import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/cfr/builtins/loadBuiltins.dart';
import 'package:hydro_sdk/hydroState.dart';

void main() {
  test('', () async {
    var state = HydroState();
    loadBuiltins(
        hydroState: state, builtins: [BuiltinLib.table, BuiltinLib.base]);

    var res = await state.doFile("test/lua/spec/closure.hc");

    if (!res.success) {
      print(res.values);
    }

    print(res.toString());

    expect(res.success, true);
  }, tags: "lua");
}
