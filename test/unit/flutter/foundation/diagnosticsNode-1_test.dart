import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/cfr/builtins/loadBuiltins.dart';
import 'package:hydro_sdk/unitTestHarness.dart';

void main() {
  testWidgets('', (WidgetTester tester) async {
    var res = await unitTestHarness(
        path: "assets/test/unit/flutter/foundation/diagnosticsNode-1.ts.hc",
        libs: [
          BuiltinLib.dart,
          BuiltinLib.flutter,
          BuiltinLib.base,
          BuiltinLib.string,
          BuiltinLib.table,
          BuiltinLib.math,
        ]);

    if (!res.success) {
      print(res.values![0]);
    }

    expect(res.success, true);
  }, tags: "unit");
}
