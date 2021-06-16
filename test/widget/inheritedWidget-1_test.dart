import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/integrationTestHarness.dart';

void main() {
  testWidgets('inherited widget test', (WidgetTester tester) async {
    await tester.pumpWidget(
        integrationTestHarness("assets/test/widget/inheritedWidget-1.ts"));
    await tester.pumpAndSettle();

    expect(find.byKey(Key("inherited message")), findsOneWidget);
  }, tags: "widget");
}
