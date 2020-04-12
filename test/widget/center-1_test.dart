import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/integrationTestHarness.dart' as harness;

void main() {
  testWidgets('center widget test', (WidgetTester tester) async {
    harness.main("assets/test/widget/center-1.ts.lc");
    await tester.pump();

    expect(find.byKey(Key("non-null child")), findsOneWidget);
  });
}
