import 'package:flua/5_2/dart/core/print.dart';
import 'package:flua/5_2/table.dart';

loadCore(Table table) {
  var core = Table();

  table["core"] = core;

  loadPrint(core);
}
