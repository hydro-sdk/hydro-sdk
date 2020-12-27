import 'package:meta/meta.dart';

import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/color.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/fontWeight.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/offsetBase.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/radius.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/size.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/textPosition.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/textRange.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadUi({@required HydroState luaState, @required HydroTable table}) {
  var ui = HydroTable();

  table["ui"] = ui;

  loadColor(ui);
  loadSize(hydroState: luaState, table: ui);
  loadRadius(ui);
  loadFontWeight(ui);
  loadTextPosition(ui);
  loadTextRange(ui);
  loadOffsetBase(hydroState: luaState, table: ui);
}
