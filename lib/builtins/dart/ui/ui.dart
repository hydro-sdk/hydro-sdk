import 'package:flua/builtins/dart/ui/size.dart';
import 'package:flua/vm/table.dart';
import 'package:flua/builtins/dart/ui/color.dart';

loadUi(Table table) {
  var ui = Table();

  table["ui"] = ui;

  loadColor(ui);
  loadSize(ui);
}
