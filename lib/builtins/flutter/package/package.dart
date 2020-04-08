import 'package:flua/builtins/flutter/package/textStyle.dart';
import 'package:flua/luastate.dart';
import 'package:flua/vm/table.dart';
import 'package:meta/meta.dart';

loadPackage({@required LuaState luaState, @required HydroTable table}) {
  var package = HydroTable();

  table["package"] = package;

  loadTextStyle(luaState: luaState, table: package);
}
