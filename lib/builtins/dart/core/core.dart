import 'package:flua/builtins/dart/core/print.dart';
import 'package:flua/vm/table.dart';

loadCore(Table table) {
  var core = Table();

  table["core"] = core;

  loadPrint(core);
}
