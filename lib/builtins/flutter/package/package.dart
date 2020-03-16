import 'package:flua/builtins/flutter/package/textStyle.dart';
import 'package:flua/vm/table.dart';

loadPackage(Table table) {
  var package = Table();

  table["package"] = package;

  loadTextStyle(package);
}
