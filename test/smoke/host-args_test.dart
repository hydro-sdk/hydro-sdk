import 'package:hydro_sdk/hc.g.dart';
import 'package:hydro_sdk/runFromBundle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/testMode.dart';

void main() {
  testWidgets('stateful hot reload', (WidgetTester tester) async {
    await tester.runAsync(() async {
      var testMode = getTestMode();
      expect(testMode, isNotNull);
      WidgetsFlutterBinding.ensureInitialized();

      await tester.pumpWidget(RunFromBundle(
        thunks: thunks,
        path: "assets/examples/hostArgs.hc",
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
      await tester.pump();
      expect(tester.takeException(), isNull);

      expect(find.text("hello world"), findsOneWidget);
      expect(find.byKey(Key("column-widget")), findsOneWidget);
      expect(find.byKey(Key("center-widget")), findsOneWidget);
    });
  });
}
