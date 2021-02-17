import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/backend/dart/dartLoadNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var iconDataClass = SwidClass.fromJson(
        json.decode(File("../test/swid/res/IconData.json").readAsStringSync()));

    expect(iconDataClass.instanceFieldDeclarations.length, 4);
    expect(
        DartLoadNamespaceSymbolDeclaration(swidClass: iconDataClass)
            .toDartSource(),
        """
void loadIconData(
    {@required HydroState hydroState, @required HydroTable table}) {
  table[\'iconData\'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      RTManagedIconData(args[1],
          table: args[0],
          hydroState: hydroState,
          fontFamily: args[2][\'fontFamily\'],
          fontPackage: args[2][\'fontPackage\'],
          matchTextDirection: args[2][\'matchTextDirection\'])
    ];
  });
  registerBoxer<IconData>(boxer: (
      {@required IconData vmObject,
      @required HydroState hydroState,
      @required HydroTable table}) {
    return VMManagedIconData(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
""");
  }, tags: "swid");
}
