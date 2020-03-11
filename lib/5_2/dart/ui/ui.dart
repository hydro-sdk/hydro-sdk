import 'package:flua/5_2/dart/ui/size.dart';
import 'package:flua/5_2/table.dart';
import 'package:flua/5_2/dart/ui/color.dart';

loadUi(Table table) {
  var ui = Table();

  table["ui"] = ui;

  loadColor(ui);
  loadSize(ui);
}
