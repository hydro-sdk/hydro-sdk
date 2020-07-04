import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/integrationTestHarness.dart' as harness;

void main() {
  testWidgets('inherited widget test', (WidgetTester tester) async {
    harness.main("assets/test/widget/inheritedWidget-1.ts.hc");
    await tester.pump();

    expect(find.byKey(Key("inherited message")), findsOneWidget);
  });
}
