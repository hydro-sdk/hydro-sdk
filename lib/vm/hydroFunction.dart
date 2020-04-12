import 'package:hydro_sdk/coroutine/coroutineresult.dart';
import 'package:hydro_sdk/hydroState.dart';

abstract class HydroFunction {
  List<dynamic> call(List<dynamic> args);
  CoroutineResult pcall(List<dynamic> args);
  HydroState get state;
}
