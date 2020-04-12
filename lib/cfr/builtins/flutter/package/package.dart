import 'package:hydro_sdk/cfr/builtins/flutter/package/textStyle.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:meta/meta.dart';

loadPackage({@required HydroState luaState, @required HydroTable table}) {
  var package = HydroTable();

  table["package"] = package;

  loadTextStyle(luaState: luaState, table: package);
}
