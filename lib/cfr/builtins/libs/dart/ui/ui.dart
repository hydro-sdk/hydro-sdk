import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/fontWeight.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/radius.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/size.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/textPosition.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/textRange.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/ui/color.dart';

void loadUi(HydroTable table) {
  var ui = HydroTable();

  table["ui"] = ui;

  loadColor(ui);
  loadSize(ui);
  loadRadius(ui);
  loadFontWeight(ui);
  loadTextPosition(ui);
  loadTextRange(ui);
}
