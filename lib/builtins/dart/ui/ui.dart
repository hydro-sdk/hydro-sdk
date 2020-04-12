import 'package:hydro_sdk/builtins/dart/ui/fontWeight.dart';
import 'package:hydro_sdk/builtins/dart/ui/radius.dart';
import 'package:hydro_sdk/builtins/dart/ui/size.dart';
import 'package:hydro_sdk/vm/table.dart';
import 'package:hydro_sdk/builtins/dart/ui/color.dart';

loadUi(HydroTable table) {
  var ui = HydroTable();

  table["ui"] = ui;

  loadColor(ui);
  loadSize(ui);
  loadRadius(ui);
  loadFontWeight(ui);
}
