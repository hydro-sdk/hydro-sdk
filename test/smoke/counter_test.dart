import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flua/integrationTestHarness.dart' as harness;

void main() {
  testWidgets('counter sample app smoke test', (WidgetTester tester) async {
    harness.main("assets/examples/counter.lc");
    await tester.pump();

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
  });
}
