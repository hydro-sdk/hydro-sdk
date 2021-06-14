import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartLoadNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var keyClass = SwidClass.fromJson(
        json.decode(File("test/swid/res/Key.json").readAsStringSync()));

    expect(
        DartLoadNamespaceSymbolDeclaration(swidClass: keyClass).toDartSource(),
        """
void loadKey({@required HydroState hydroState, @required HydroTable table}) {
  table[\'key\'] = makeLuaDartFunc(func: (List<dynamic> args) {
    return [
      maybeBoxObject<Key>(
          object: Key(args[1]), hydroState: hydroState, table: args[0])
    ];
  });
  registerBoxer<Key>(boxer: (
      {@required Key vmObject,
      @required HydroState hydroState,
      @required HydroTable table}) {
    return VMManagedKey(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
""");
  }, tags: "swid");
}
