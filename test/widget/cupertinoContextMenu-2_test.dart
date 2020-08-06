import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/integrationTestHarness.dart';

void main() {
  testWidgets('center widget test', (WidgetTester tester) async {
    HttpOverrides.global = null;
    await tester.pumpWidget(
        integrationTestHarness("assets/test/widget/cupertinoContextMenu-2.ts"));
    await tester.pumpAndSettle();

    expect(tester.takeException(), isNull);

    expect(find.byKey(Key("cupertinoContextMenu")), findsOneWidget);
  });
}
