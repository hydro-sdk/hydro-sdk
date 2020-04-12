import 'package:flua/builtins/flutter/animation/alwaysStoppedAnimation.dart';
import 'package:flua/luastate.dart';
import 'package:flua/vm/table.dart';
import 'package:meta/meta.dart';

loadAnimation({@required LuaState luaState, @required HydroTable table}) {
  var animation = HydroTable();

  table["animation"] = animation;

  loadAlwaysStoppedAnimation(luaState: luaState, table: animation);
}
