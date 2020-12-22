import 'package:meta/meta.dart';

import 'package:hydro_sdk/cfr/builtins/libs/dart/core/duration.dart';
import 'package:hydro_sdk/cfr/builtins/libs/dart/core/print.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadCore({@required HydroState luaState, @required HydroTable table}) {
  var core = HydroTable();

  table["core"] = core;

  loadPrint(core);
  loadDuration(hydroState: luaState, table: core);
}
