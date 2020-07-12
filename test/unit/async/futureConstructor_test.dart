import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/cfr/builtins/loadBuiltins.dart';
import 'package:hydro_sdk/cfr/coroutine/coroutineresult.dart';
import 'package:hydro_sdk/hydroState.dart';

void main() {
  testWidgets('', (WidgetTester tester) async {
    await tester.runAsync(() async {
      var state = HydroState();
      loadBuiltins(hydroState: state, builtins: [
        BuiltinLib.dart,
        BuiltinLib.base,
        BuiltinLib.string,
        BuiltinLib.table,
        BuiltinLib.math
      ]);
      CoroutineResult res;

      res =
          await state.doFile("../assets/test/unit/async/futureConstructor.ts.hc");

      if (!res.success) {
        print(res.values[0]);
      }

      expect(res.success, true);
    });
  });
}
