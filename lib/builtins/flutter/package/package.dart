import 'package:flua/builtins/flutter/package/textStyle.dart';
import 'package:flua/hydroState.dart';
import 'package:flua/vm/table.dart';
import 'package:meta/meta.dart';

loadPackage({@required HydroState luaState, @required HydroTable table}) {
  var package = HydroTable();

  table["package"] = package;

  loadTextStyle(luaState: luaState, table: package);
}
