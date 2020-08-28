import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/integrationTestHarness.dart';
import 'package:hydro_sdk/testMode.dart';

void main() {
  testWidgets('example project smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(integrationTestHarness("../assets/hello-world.hc"));
    await tester.pumpAndSettle();

    var exception = tester.takeException();
    expect(exception, isNull);

    expect(find.byKey(Key("some convoluted but familiar functions")),
        findsOneWidget);
  });
}
