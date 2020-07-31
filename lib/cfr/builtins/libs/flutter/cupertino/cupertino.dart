import 'package:hydro_sdk/cfr/builtins/libs/flutter/cupertino/cupertinoApp.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:meta/meta.dart';

void loadCupertino(
    {@required HydroState luaState, @required HydroTable table}) {
  var cupertino = HydroTable();

  table["cupertino"] = cupertino;

  loadCupertinoApp(luaState: luaState, table: cupertino);
}
