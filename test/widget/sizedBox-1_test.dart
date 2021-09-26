import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/integrationTestHarness.dart';
import 'package:hydro_sdk/testMode.dart';

void main() {
  testWidgets('sizedbox widget test', (WidgetTester tester) async {
    var testMode = getTestMode();
    expect(testMode, isNotNull);

    await tester
        .pumpWidget(integrationTestHarness("assets/test/widget/sizedBox-1.ts"));
    await tester.pumpAndSettle();

    expect(find.byKey(Key("empty")), findsOneWidget);
    expect(find.byKey(Key("only width")), findsOneWidget);
    expect(find.byKey(Key("only height")), findsOneWidget);
  }, tags: "widget");
}
