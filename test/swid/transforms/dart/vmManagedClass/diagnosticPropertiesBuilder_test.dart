import 'dart:io';
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/vmManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var diagnosticPropertiesBuilderClass = SwidClass.fromJson(json.decode(
        File("../test/swid/res/DiagnosticPropertiesBuilder.json")
            .readAsStringSync()));

    expect(
        VMManagedClassDeclaration(swidClass: diagnosticPropertiesBuilderClass)
            .toDartSource(),
        """
class VMManagedDiagnosticPropertiesBuilder
    extends VMManagedBox<DiagnosticPropertiesBuilder> {
  VMManagedDiagnosticPropertiesBuilder(
      {@required this.table,
      @required this.vmObject,
      @required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    maybeBoxObject<List<DiagnosticsNode>>(
        object: vmObject.properties,
        hydroState: hydroState,
        table: HydroTable());
    table[\'defaultDiagnosticsTreeStyle\'] =
        DiagnosticsTreeStyle.values.indexWhere((x) {
      return x == vmObject.defaultDiagnosticsTreeStyle;
    });
    table[\'emptyBodyDescription\'] = vmObject.emptyBodyDescription;
    table[\'add\'] = makeLuaDartFunc(func: (List<dynamic> args) {
      vmObject.add(maybeUnBoxAndBuildArgument<DiagnosticsNode>(args[1],
          parentState: hydroState));
      return [];
    });
  }

  final HydroTable table;

  final HydroState hydroState;

  final DiagnosticPropertiesBuilder vmObject;
}
""");
  }, tags: "swid");
}
