import 'dart:io';
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/rtManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/ir/backend/dart/vmManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var diagnosticPropertiesBuilderClass = SwidClass.fromJson(json.decode(
        File("test/swid/res/DiagnosticPropertiesBuilder.json")
            .readAsStringSync()));

    expect(
        VMManagedClassDeclaration(swidClass: diagnosticPropertiesBuilderClass)
            .toDartSource(),
        "");
  }, tags: "swid");
}
