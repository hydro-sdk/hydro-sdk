import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/integrationTestHarness.dart';

void main() {
  testWidgets('', (WidgetTester tester) async {
    await tester.pumpWidget(
        integrationTestHarness("assets/test/widget/changeNotifier-1.ts"));
    await tester.pumpAndSettle();

    expect(find.byKey(Key("counter")), findsOneWidget);
    expect(find.byKey(Key("increment")), findsOneWidget);
    expect(find.text("You have pushed the button this many times"),
        findsOneWidget);

    expect(find.text("0"), findsOneWidget);
    await tester.tap(find.byKey(Key("increment")));
    await tester.pumpAndSettle();
    expect(find.text("1"), findsOneWidget);
    await tester.tap(find.byKey(Key("increment")));
    await tester.pumpAndSettle();
    expect(find.text("2"), findsOneWidget);
  }, tags: "widget");
}
