import 'package:hydro_sdk/cfr/builtins/dart/core/print.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';

void loadCore(HydroTable table) {
  var core = HydroTable();

  table["core"] = core;

  loadPrint(core);
}
