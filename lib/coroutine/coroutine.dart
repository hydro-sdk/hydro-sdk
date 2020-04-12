import 'package:flua/coroutine/coroutineresult.dart';
import 'package:flua/coroutine/coroutinestatus.dart';
import 'package:flua/vm/hydroFunction.dart';

class Coroutine {
  Coroutine(HydroFunction f);

  CoroutineStatus _status;
  CoroutineStatus get status => _status;
  CoroutineResult resume([List<dynamic> args = const []]) {
    return new CoroutineResult(true, []);
  }
}
