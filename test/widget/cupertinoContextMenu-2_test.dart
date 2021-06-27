import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/integrationTestHarness.dart';

void main() {
  testWidgets('center widget test', (WidgetTester tester) async {
    await tester.runAsync(() async {
      HttpOverrides.global = null;
      WidgetsFlutterBinding.ensureInitialized();

      await tester.pumpWidget(integrationTestHarness(
          "assets/test/widget/cupertinoContextMenu-2.ts"));
      await Future.delayed(Duration(seconds: 3));
      await tester.pumpAndSettle();

      expect(tester.takeException(), isNull);

      expect(find.byKey(Key("cupertinoContextMenu")), findsOneWidget);

      await tester.tap(find.byKey(Key("cupertinoContextMenu")));
      await tester.pump();
      await Future.delayed(Duration(seconds: 3));
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
      await Future.delayed(Duration(seconds: 3));
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
    });
  }, tags: "widget");
}
