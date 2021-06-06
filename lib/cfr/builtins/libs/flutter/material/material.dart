import 'package:hydro_sdk/cfr/builtins/libs/flutter/material/appBar.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/material/card.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/material/circularProgressIndicator.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/material/flatButton.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/material/floatingActionButton.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/material/iconButton.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/material/inkWell.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/material/inputDecoration.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/material/materialApp.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/material/materialPageRoute.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/material/outlineInputBorder.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/material/popupMenuButton.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/material/popupMenuItem.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/material/rawChip.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/material/scaffold.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/material/textFormField.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/material/textTheme.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/material/theme.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/material/themeData.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadMaterial({required HydroState luaState, required HydroTable table}) {
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
  loadPopupMenuButton(luaState: luaState, table: material);
  loadPopupMenuItem(luaState: luaState, table: material);
  loadMaterialPageRoute(luaState: luaState, table: material);
  loadInkWell(luaState: luaState, table: material);
  loadCircularProgressIndicator(luaState: luaState, table: material);
  loadTextTheme(hydroState: luaState);
  loadThemeData(hydroState: luaState);
  loadRawChip(luaState: luaState, table: material);
  loadInputDecoration(luaState: luaState, table: material);
  loadOutlineInputBorder(luaState: luaState, table: material);
  loadTextFormField(luaState: luaState, table: material);
}
