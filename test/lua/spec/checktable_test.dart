import 'package:hydro_sdk/cfr/builtins/loadBuiltins.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('', () async {
    var state = HydroState();
    loadBuiltins(
        hydroState: state, builtins: [BuiltinLib.table, BuiltinLib.base]);

    var res = await state.doFile("lua/spec/checktable.hc");
    print(res.toString());

    expect(res.success, true);
  },tags:"lua");
}
