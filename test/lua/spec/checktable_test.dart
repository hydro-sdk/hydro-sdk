import 'package:hydro_sdk/hydroState.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('', () async {
    var state = HydroState();

    var res = await state.doFile("lua/spec/checktable.lc");
    print(res.toString());

    expect(res.success, true);
  });
}
