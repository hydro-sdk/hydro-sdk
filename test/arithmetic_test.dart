import 'package:flua/src/5_2/state.dart';
import 'package:test/test.dart';

void main() {
  test('', () async{
    var state = LuaState();

    var res = await state.doFile(path);
  });
}
