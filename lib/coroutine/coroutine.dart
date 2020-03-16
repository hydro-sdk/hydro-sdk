import 'package:flua/coroutine/coroutineresult.dart';
import 'package:flua/coroutine/coroutinestatus.dart';
import 'package:flua/vm/luafunction.dart';

class Coroutine {
  Coroutine(LuaFunction f);

  CoroutineStatus _status;
  CoroutineStatus get status => _status;
  CoroutineResult resume([List<dynamic> args = const []]) {
    return new CoroutineResult(true, []);
  }
}
