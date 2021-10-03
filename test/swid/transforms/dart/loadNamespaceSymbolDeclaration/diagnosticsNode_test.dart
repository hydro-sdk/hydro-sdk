import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartLoadNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var diagnosticsNode = SwidClass.fromJson(json
        .decode(File("test/swid/res/DiagnosticsNode.json").readAsStringSync()));

    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          DartLoadNamespaceSymbolDeclaration(swidClass: diagnosticsNode),
        ),
        """
void loadDiagnosticsNode(
    {required HydroState hydroState, required HydroTable table}) {
  table[\'diagnosticsNode\'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedDiagnosticsNode(
          table: luaCallerArguments[0],
          hydroState: hydroState,
          linePrefix: luaCallerArguments.length >= 2
              ? luaCallerArguments[1][\'linePrefix\']
              : null,
          showName: luaCallerArguments.length >= 2
              ? luaCallerArguments[1][\'showName\']
              : null,
          showSeparator: luaCallerArguments.length >= 2
              ? luaCallerArguments[1][\'showSeparator\']
              : null,
          style: maybeUnBoxEnum(
              values: DiagnosticsTreeStyle.values,
              boxedEnum: luaCallerArguments.length >= 2
                  ? luaCallerArguments[1][\'style\']
                  : null),
          name: luaCallerArguments.length >= 2
              ? luaCallerArguments[1][\'name\']
              : null)
    ];
  });
  table[\'diagnosticsNodeMessage\'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<DiagnosticsNode>(
          object: DiagnosticsNode.message(luaCallerArguments[1],
              allowWrap: luaCallerArguments.length >= 3
                  ? luaCallerArguments[2][\'allowWrap\']
                  : null,
              level: maybeUnBoxEnum(
                  values: DiagnosticLevel.values,
                  boxedEnum: luaCallerArguments.length >= 3
                      ? luaCallerArguments[2][\'level\']
                      : null),
              style: maybeUnBoxEnum(
                  values: DiagnosticsTreeStyle.values,
                  boxedEnum: luaCallerArguments.length >= 3
                      ? luaCallerArguments[2][\'style\']
                      : null)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  table[\'diagnosticsNodeToJsonList\'] =
      makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      maybeBoxObject<List<dynamic>>(
          object: DiagnosticsNode.toJsonList(
              maybeUnBoxAndBuildArgument<List<DiagnosticsNode>?,
                      DiagnosticsNode>(luaCallerArguments[1],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<DiagnosticsNode?, dynamic>(
                  luaCallerArguments[2],
                  parentState: hydroState),
              maybeUnBoxAndBuildArgument<DiagnosticsSerializationDelegate,
                  dynamic>(luaCallerArguments[3], parentState: hydroState)),
          hydroState: hydroState,
          table: HydroTable()),
    ];
  });
  registerBoxer<DiagnosticsNode>(boxer: (
      {required DiagnosticsNode vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedDiagnosticsNode(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
""");
  }, tags: "swid");
}
