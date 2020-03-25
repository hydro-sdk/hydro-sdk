import 'package:flua/builtins/dart/core/print.dart';
import 'package:flua/vm/table.dart';

loadCore(HydroTable table) {
  var core = HydroTable();

  table["core"] = core;

  loadPrint(core);
}
