import 'package:flua/builtins/flutter/package/textStyle.dart';
import 'package:flua/vm/table.dart';

loadPackage(HydroTable table) {
  var package = HydroTable();

  table["package"] = package;

  loadTextStyle(package);
}
