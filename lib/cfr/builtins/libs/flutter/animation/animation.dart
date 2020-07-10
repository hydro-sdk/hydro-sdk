import 'package:hydro_sdk/cfr/builtins/libs/flutter/animation/alwaysStoppedAnimation.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:meta/meta.dart';

void loadAnimation(
    {@required HydroState luaState, @required HydroTable table}) {
  var animation = HydroTable();

  table["animation"] = animation;

  loadAlwaysStoppedAnimation(luaState: luaState, table: animation);
}
