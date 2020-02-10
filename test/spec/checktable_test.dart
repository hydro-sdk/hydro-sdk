import 'package:flua/src/5_2/state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('', () async {
    var state = LuaState();

    var res = await state.doFile("spec/checktable.lc");
    print(res.toString());

    expect(res.success, true);
  });
}
