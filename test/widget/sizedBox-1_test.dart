import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flua/integrationTestHarness.dart' as harness;

void main() {
  testWidgets('animated_list sample app smoke test',
      (WidgetTester tester) async {
    harness.main("assets/test/widget/sizedBox-1.ts.lc");
    await tester.pump();

    expect(find.byKey(Key("empty")), findsOneWidget);
    expect(find.byKey(Key("only width")), findsOneWidget);
    expect(find.byKey(Key("only height")), findsOneWidget);
  });
}
