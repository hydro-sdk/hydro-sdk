import 'package:hydro_sdk/cfr/builtins/flutter/material/appBar.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/material/card.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/material/circularProgressIndicator.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/material/flatButton.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/material/floatingActionButton.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/material/iconButton.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/material/inkWell.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/material/materialApp.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/material/materialPageRoute.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/material/popupMenuButton.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/material/popupMenuItem.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/material/scaffold.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/material/theme.dart';
import 'package:hydro_sdk/cfr/builtins/flutter/material/wireupColors.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';

import 'package:meta/meta.dart';

void loadMaterial({@required HydroState luaState, @required HydroTable table}) {
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
  loadMaterialPageRoute(luaState: luaState, table: material);
  loadInkWell(luaState: luaState, table: material);
  loadCircularProgressIndicator(luaState: luaState, table: material);
}
