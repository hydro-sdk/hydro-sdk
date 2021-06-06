import 'package:hydro_sdk/cfr/builtins/libs/flutter/foundation/changeNotifier.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/foundation/diagnosticPropertiesBuilder.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/foundation/diagnosticable.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/foundation/diagnosticableTree.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/foundation/diagnosticsNode.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/foundation/diagnosticsSerializationDelegate.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/foundation/key.dart';
import 'package:hydro_sdk/cfr/builtins/libs/flutter/foundation/textTreeConfiguration.dart';
import 'package:hydro_sdk/cfr/vm/table.dart';
import 'package:hydro_sdk/hydroState.dart';

void loadFoundation({required HydroState luaState, required HydroTable table}) {
  var foundation = HydroTable();

  table["foundation"] = foundation;

  loadKey(hydroState: luaState, table: foundation);
  loadChangeNotifier();
  loadTextTreeConfiguration(hydroState: luaState, table: foundation);
  loadDiagnosticsNode(hydroState: luaState, table: foundation);
  loadDiagnosticsSerializationDelegate(hydroState: luaState, table: foundation);
  loadDiagnosticPropertiesBuilder(hydroState: luaState, table: foundation);
  loadDiagnosticable(hydroState: luaState, table: foundation);
  loadDiagnosticableTree(hydroState: luaState, table: foundation);
}
