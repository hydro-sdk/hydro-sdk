import 'package:hydro_sdk/cfr/builtins/libs/flutter/services/textEditingValue.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/services/textSelection.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadServices({required HydroState luaState, required HydroTable table}) {
  var services = HydroTable();

  table["services"] = services;

  loadTextEditingValue(luaState: luaState, table: services);
  loadTextSelection(luaState: luaState, table: services);
}
