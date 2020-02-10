import 'package:flua/src/5_2/coroutineresult.dart';
import 'package:flua/src/5_2/coroutinestatus.dart';
import 'package:flua/src/5_2/luafunction.dart';

class Coroutine {
  Coroutine(LuaFunction f);

  CoroutineStatus _status;
  CoroutineStatus get status => _status;
  CoroutineResult resume([List<dynamic> args = const []]) {
    return new CoroutineResult(true, []);
  }
}