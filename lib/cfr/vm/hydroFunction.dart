import 'package:hydro_sdk/cfr/coroutine/coroutineresult.dart';
import 'package:hydro_sdk/hydroState.dart';

abstract class HydroFunction {
  List<dynamic>? call(List<dynamic> args);
  CoroutineResult pcall(List<dynamic> args, {required HydroState parentState});
  HydroState? get state;
}
