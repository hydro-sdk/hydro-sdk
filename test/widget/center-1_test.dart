import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/integrationTestHarness.dart';

void main() {
  testWidgets('center widget test', (WidgetTester tester) async {
    await tester
        .pumpWidget(integrationTestHarness("assets/test/widget/center-1.ts"));
    await tester.pumpAndSettle();

    expect(find.byKey(Key("non-null child")), findsOneWidget);
  }, tags: "widget");
}
