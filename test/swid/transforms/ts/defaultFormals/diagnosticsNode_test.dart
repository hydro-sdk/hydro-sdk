import 'dart:io';
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/backend/ts/tsFunctionDefaultNamedProps.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var diagnosticsNodeClass = SwidClass.fromJson(json.decode(
        File("../test/swid/res/DiagnosticsNode.json").readAsStringSync()));

    expect(
        TsFunctionDefaultNamedProps(
                swidFunctionType: SwidFunctionType.clone(
                    swidFunctionType: diagnosticsNodeClass.constructorType,
                    name: diagnosticsNodeClass.name))
            .toTsSource(),
        """
const diagnosticsNodeDefaultProps = {
    showName: true,
    showSeparator: true
};
""");
  }, tags: "swid");
}
