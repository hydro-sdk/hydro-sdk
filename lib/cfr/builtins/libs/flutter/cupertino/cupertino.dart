import 'package:hydro_sdk/cfr/builtins/libs/flutter/cupertino/cupertinoApp.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/cupertino/cupertinoButton.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/cupertino/cupertinoContextMenu.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/cupertino/cupertinoContextMenuAction.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadCupertino({required HydroState luaState, required HydroTable table}) {
  var cupertino = HydroTable();

  table["cupertino"] = cupertino;

  loadCupertinoApp(luaState: luaState, table: cupertino);
  loadCupertinoButton(luaState: luaState, table: cupertino);
  loadCupertinoContextMenu(luaState: luaState, table: cupertino);
  loadCupertinoContextMenuAction(luaState: luaState, table: cupertino);
}
