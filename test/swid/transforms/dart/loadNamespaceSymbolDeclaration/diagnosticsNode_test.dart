import 'dart:io';
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/loadNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var diagnosticsNode = SwidClass.fromJson(json.decode(
        File("../test/swid/res/DiagnosticsNode.json").readAsStringSync()));

    expect(
        LoadNamespaceSymbolDeclaration(swidClass: diagnosticsNode)
            .toDartSource(),
        """
void loadDiagnosticsNode(
    {@required HydroState hydroState, @required HydroTable table}) {
  table[\'diagnosticsNode\'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RTManagedDiagnosticsNode(
          table: args[0],
          hydroState: hydroState,
          linePrefix: args[1][\'linePrefix\'],
          showName: args[1][\'showName\'],
          showSeparator: args[1][\'showSeparator\'],
          style: maybeUnBoxEnum(
              values: DiagnosticsTreeStyle.values, boxedEnum: args[1][\'style\']),
          name: args[1][\'name\'])
    ];
  });
  table[\'diagnosticsNodeMessage\'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<DiagnosticsNode>(
          object: DiagnosticsNode.message(args[1],
              allowWrap: args[2][\'allowWrap\'],
              level: maybeUnBoxEnum(
                  values: DiagnosticLevel.values, boxedEnum: args[2][\'level\']),
              style: maybeUnBoxEnum(
                  values: DiagnosticsTreeStyle.values,
                  boxedEnum: args[2][\'style\'])),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  table[\'diagnosticsNodeToJsonList\'] =
      makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<List<dynamic>>(
          object: DiagnosticsNode.toJsonList(
              maybeUnBoxAndBuildArgument<List<DiagnosticsNode>>(args[1],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<DiagnosticsNode>(args[2],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<DiagnosticsSerializationDelegate>(
                  args[3],
                  parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable())
    ];
  });
  registerBoxer<DiagnosticsNode>(boxer: (
      {@required DiagnosticsNode vmObject,
      @required HydroState hydroState,
      @required HydroTable table}) {
    return VMManagedDiagnosticsNode(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
""");
  }, tags: "swid");
}
