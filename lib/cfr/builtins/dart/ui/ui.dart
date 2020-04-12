import 'package:hydro_sdk/cfr/builtins/dart/ui/fontWeight.dart';
import 'package:hydro_sdk/cfr/builtins/dart/ui/radius.dart';
import 'package:hydro_sdk/cfr/builtins/dart/ui/size.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/cfr/builtins/dart/ui/color.dart';

loadUi(HydroTable table) {
  var ui = HydroTable();

  table["ui"] = ui;

  loadColor(ui);
  loadSize(ui);
  loadRadius(ui);
  loadFontWeight(ui);
}
