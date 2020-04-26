import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/integrationTestHarness.dart' as harness;
import 'package:hydro_sdk/testMode.dart';

void main() {
  testWidgets('center widget test', (WidgetTester tester) async {
    var testMode = getTestMode();
    expect(testMode, isNotNull);

    harness.main(testMode == TestMode.typescript
        ? "assets/test/widget/center-1.ts.hc"
        : testMode == TestMode.haxe ? "assets/test/widget/center-1.hx.hc" : "");
    await tester.pump();

    expect(find.byKey(Key("non-null child")), findsOneWidget);
  });
}
