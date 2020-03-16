import 'package:flua/coroutine/coroutineresult.dart';
import 'package:flua/luastate.dart';

abstract class LuaFunction {
  List<dynamic> call(List<dynamic> args);
  CoroutineResult pcall(List<dynamic> args);
  LuaState get state;
}
