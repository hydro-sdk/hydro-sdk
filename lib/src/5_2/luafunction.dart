import 'package:flua/src/5_2/coroutineresult.dart';
import 'package:flua/src/5_2/luastate.dart';

abstract class LuaFunction {
  List<dynamic> call(List<dynamic> args);
  CoroutineResult pcall(List<dynamic> args);
  LuaState get state;
}