import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartMethodInjectionImplementation.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var diagnosticsNodeClass = SwidClass.fromJson(json.decode(
        File("../test/swid/res/DiagnosticsNode.json").readAsStringSync()));

    expect(
        DartMethodInjectionImplementation(
            swidFunctionType: diagnosticsNodeClass.methods
                .firstWhere((x) => x.name == "isFiltered")).toDartSource(),
        """
table['_dart_isFiltered'] = makeLuaDartFunc(func: (List<dynamic> args) {
  return [
    super.isFiltered(
        maybeUnBoxEnum(values: DiagnosticLevel.values, boxedEnum: args[1]))
  ];
});""");
  }, tags: "swid");
}
