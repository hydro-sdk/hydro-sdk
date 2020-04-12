import 'package:flua/coroutine/coroutineresult.dart';
import 'package:flua/hydroState.dart';

abstract class HydroFunction {
  List<dynamic> call(List<dynamic> args);
  CoroutineResult pcall(List<dynamic> args);
  HydroState get state;
}
