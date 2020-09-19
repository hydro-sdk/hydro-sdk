import 'package:hydro_sdk/cfr/builtins/libs/flutter/cupertino/cupertinoApp.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/cupertino/cupertinoButton.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/cupertino/cupertinoContextMenu.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/cupertino/cupertinoContextMenuAction.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/cupertino/cupertinoPageScaffold.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/cupertino/cupertinoTabBar.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/cupertino/cupertinoTabScaffold.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/cupertino/cupertinoTabView.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:meta/meta.dart';

void loadCupertino(
    {@required HydroState luaState, @required HydroTable table}) {
  var cupertino = HydroTable();

  table["cupertino"] = cupertino;

  loadCupertinoApp(luaState: luaState, table: cupertino);
  loadCupertinoButton(luaState: luaState, table: cupertino);
  loadCupertinoContextMenu(luaState: luaState, table: cupertino);
  loadCupertinoContextMenuAction(luaState: luaState, table: cupertino);
  loadCupertinoPageScaffold(luaState: luaState, table: cupertino);
  loadCupertinoTabScaffold(luaState: luaState, table: cupertino);
  loadCupertinoTabBar(luaState: luaState, table: cupertino);
  loadCupertinoTabView(luaState: luaState, table: cupertino);
}
