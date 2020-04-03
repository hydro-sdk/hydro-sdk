import 'package:flua/builtins/dart/ui/radius.dart';
import 'package:flua/builtins/dart/ui/size.dart';
import 'package:flua/vm/table.dart';
import 'package:flua/builtins/dart/ui/color.dart';

loadUi(HydroTable table) {
  var ui = HydroTable();

  table["ui"] = ui;

  loadColor(ui);
  loadSize(ui);
  loadRadius(ui);
}
