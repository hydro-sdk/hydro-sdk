import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartMethodInjectionImplementation.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var diagnosticsNodeClass = SwidClass.fromJson(json
        .decode(File("test/swid/res/DiagnosticsNode.json").readAsStringSync()));

    expect(
        CachingPipeline().reduceFromTerm(
          DartMethodInjectionImplementation(
            swidFunctionType: diagnosticsNodeClass.methods.firstWhere(
              (x) => x.name == "isFiltered",
            ),
          ),
        ),
        """
table[\'_dart_isFiltered\'] =
    makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) {
  return [
    super.isFiltered(maybeUnBoxEnum(
        values: DiagnosticLevel.values, boxedEnum: luaCallerArguments[1]))
  ];
});""");
  }, tags: "swid");
}
