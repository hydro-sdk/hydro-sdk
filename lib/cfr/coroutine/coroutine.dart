import 'package:hydro_sdk/cfr/coroutine/coroutineresult.dart';
import 'package:hydro_sdk/cfr/coroutine/coroutinestatus.dart';
import 'package:hydro_sdk/cfr/vm/hydroFunction.dart';

class Coroutine {
  Coroutine(HydroFunction f);

  CoroutineStatus? _status;
  CoroutineStatus? get status => _status;
  CoroutineResult resume([List<dynamic> args = const []]) {
    return new CoroutineResult(true, []);
  }
}
