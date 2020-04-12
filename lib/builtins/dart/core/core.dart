import 'package:hydro_sdk/builtins/dart/core/print.dart';
import 'package:hydro_sdk/vm/table.dart';

loadCore(HydroTable table) {
  var core = HydroTable();

  table["core"] = core;

  loadPrint(core);
}
