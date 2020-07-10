import 'package:hydro_sdk/cfr/builtins/libs/dart/developer/debugger.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';

void loadDeveloper(HydroTable table) {
  var developer = HydroTable();

  table["developer"] = developer;

  loadDebugger(developer);
}
