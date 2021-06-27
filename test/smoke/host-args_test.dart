import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/integrationTestHarness.dart';
import 'package:hydro_sdk/testMode.dart';

void main() {
  testWidgets('host arguments', (WidgetTester tester) async {
    await tester.runAsync(() async {
      var testMode = getTestMode();
      expect(testMode, isNotNull);

      await tester.pumpWidget(integrationTestHarness(
        "assets/examples/hostArgs",
        args: [
          "hello world",
          Column(
            key: Key("column-widget"),
            children: [
              Center(
                key: Key("center-widget"),
                child: Text("The scaffold body is passed in from Dart"),
              )
            ],
          )
        ],
      ));
      await Future.delayed(Duration(seconds: 5));
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);

      expect(find.text("hello world"), findsOneWidget);
      expect(find.byKey(Key("column-widget")), findsOneWidget);
      expect(find.byKey(Key("center-widget")), findsOneWidget);
    });
  }, tags: "smoke");
}
