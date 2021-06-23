import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/integrationTestHarness.dart';

void main() {
  testWidgets('', (WidgetTester tester) async {
    await tester.pumpWidget(integrationTestHarness(
        "assets/test/widget/textEditingController-text-2.ts"));
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
    expect(find.text("Hello world2"), findsOneWidget);
    expect(find.byKey(Key("Hello world2")), findsOneWidget);
  }, tags: "widget");
}
