import 'package:flua/builtins/flutter/animation/alwaysStoppedAnimation.dart';
import 'package:flua/hydroState.dart';
import 'package:flua/vm/table.dart';
import 'package:meta/meta.dart';

loadAnimation({@required HydroState luaState, @required HydroTable table}) {
  var animation = HydroTable();

  table["animation"] = animation;

  loadAlwaysStoppedAnimation(luaState: luaState, table: animation);
}
