import 'package:flua/5_2/flutter/package/textStyle.dart';
import 'package:flua/5_2/table.dart';

loadPackage(Table table) {
  var package = Table();

  table["package"] = package;

  loadTextStyle(package);
}
