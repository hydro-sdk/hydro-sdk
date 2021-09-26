import 'package:hydro_sdk/cfr/builtins/libs/flutter/rendering/boxConstraints.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadRendering({required HydroState luaState, required HydroTable table}) {
  var rendering = HydroTable();

  table["rendering"] = rendering;

  loadBoxConstraints(luaState: luaState, table: rendering);
}
