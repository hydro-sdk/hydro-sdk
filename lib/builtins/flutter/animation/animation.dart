import 'package:hydro_sdk/builtins/flutter/animation/alwaysStoppedAnimation.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/vm/table.dart';
import 'package:meta/meta.dart';

loadAnimation({@required HydroState luaState, @required HydroTable table}) {
  var animation = HydroTable();

  table["animation"] = animation;

  loadAlwaysStoppedAnimation(luaState: luaState, table: animation);
}
