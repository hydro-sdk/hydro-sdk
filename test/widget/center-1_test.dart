import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/integrationTestHarness.dart' as harness;
import 'package:hydro_sdk/testMode.dart';

Future<void> testBody(
    {@required String target, @required WidgetTester tester}) async {
  harness.main(target);
  await tester.pump();

  expect(find.byKey(Key("non-null child")), findsOneWidget);
}

void main() {
  testWidgets('center widget test', (WidgetTester tester) async {
    var testMode = getTestMode();
    expect(testMode, isNotNull);

    if (testMode == TestMode.typescript) {
      await testBody(
          target: "assets/test/widget/center-1.ts.hc", tester: tester);
    } else if (testMode == TestMode.haxe) {
      await testBody(
          target: "assets/test/widget/center-1.hx.hc", tester: tester);
    }
  });
}
