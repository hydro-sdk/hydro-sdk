import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/integrationTestHarness.dart';

void main() {
  testWidgets('', (WidgetTester tester) async {
    await tester.pumpWidget(integrationTestHarness(
        "assets/test/widget/textEditingController-1.ts"));
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);

    await tester.enterText(find.byKey(Key("textFormField")), "Hello world");
    expect(find.text("hello world"), findsOneWidget);
  }, tags: "widget");
}
