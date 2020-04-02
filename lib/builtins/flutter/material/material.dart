import 'package:flua/builtins/flutter/material/appBar.dart';
import 'package:flua/builtins/flutter/material/card.dart';
import 'package:flua/builtins/flutter/material/flatButton.dart';
import 'package:flua/builtins/flutter/material/floatingActionButton.dart';
import 'package:flua/builtins/flutter/material/iconButton.dart';
import 'package:flua/builtins/flutter/material/materialApp.dart';
import 'package:flua/builtins/flutter/material/popupMenuButton.dart';
import 'package:flua/builtins/flutter/material/popupMenuItem.dart';
import 'package:flua/builtins/flutter/material/scaffold.dart';
import 'package:flua/builtins/flutter/material/theme.dart';
import 'package:flua/builtins/flutter/material/wireupColors.dart';
import 'package:flua/luastate.dart';
import 'package:flua/vm/table.dart';

import 'package:meta/meta.dart';

loadMaterial({@required LuaState luaState, @required HydroTable table}) {
  var material = HydroTable();

  table["material"] = material;

  loadScaffold(luaState: luaState, table: material);
  loadAppBar(luaState: luaState, table: material);
  loadFlatButton(luaState: luaState, table: material);
  loadMaterialApp(luaState: luaState, table: material);
  loadFloatingActionButton(luaState: luaState, table: material);
  loadThemeOf(luaState: luaState, table: material);
  loadIconButton(luaState: luaState, table: material);
  loadCard(luaState: luaState, table: material);
  loadWireupColors(material);
  loadPopupMenuButton(luaState: luaState, table: material);
  loadPopupMenuItem(luaState: luaState, table: material);
}
