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
    var iconDataClass = SwidClass.fromJson(
        json.decode(File("test/swid/res/IconData.json").readAsStringSync()));

    expect(iconDataClass.instanceFieldDeclarations.length, 4);
    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          DartLoadNamespaceSymbolDeclaration(swidClass: iconDataClass),
        ),
        """
void loadIconData({required HydroState hydroState, required HydroTable table}) {
  table[\'iconData\'] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
    return [
      RTManagedIconData(luaCallerArguments[1],
          table: luaCallerArguments[0],
          hydroState: hydroState,
          fontFamily: luaCallerArguments[2][\'fontFamily\'],
          fontPackage: luaCallerArguments[2][\'fontPackage\'],
          matchTextDirection: luaCallerArguments[2][\'matchTextDirection\'])
    ];
  });
  registerBoxer<IconData>(boxer: (
      {required IconData vmObject,
      required HydroState hydroState,
      required HydroTable table}) {
    return VMManagedIconData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
""");
  }, tags: "swid");
}
