import 'package:meta/meta.dart';

import 'package:hydro_sdk/cfr/builtins/libs/dart/async/future.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadAsync({required HydroTable table, required HydroState hydroState}) {
  var _async = HydroTable();

  table["async"] = _async;

  loadFuture(table: _async, hydroState: hydroState);
}
