import 'dart:io';

import 'package:hydro_sdk/runFromNetwork.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('stateful hot reload', (WidgetTester tester) async {
    await tester.runAsync(() async {
      String hashPath = "hot/stateful/counter1.lc.sha256";
      String bytecodePath = "hot/stateful/counter1.lc";

      WidgetsFlutterBinding.ensureInitialized();
      await tester.pumpWidget(RunFromNetwork(
        baseUrl: "http://127.0.0.1:3000/hot/stateful/counter.lc",
        downloadHash: (String uri) async {
          var file = File(hashPath);
          var res = file.readAsStringSync();
          return res;
        },
        downloadByteCodeImage: (String uri) async {
          var file = File(bytecodePath);
          var res = file.readAsBytesSync();
          return res;
        },
      ));

      expect(tester.takeException(), isNull);
      await Future.delayed(Duration(seconds: 5));

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

      //Switch out files in response to polling
      //Should trigger a hot reload
      hashPath = "hot/stateful/counter2.lc.sha256";
      bytecodePath = "hot/stateful/counter2.lc";

      expect(tester.takeException(), isNull);

      await Future.delayed(Duration(seconds: 5));

      await tester.pump();

      expect(find.byKey(Key("counter")), findsOneWidget);
      expect(find.byKey(Key("increment")), findsOneWidget);

      //Old text, should have been replaced
      expect(find.text("You have pushed the button this many times"),
          findsNothing);
      //Old text should have been replaced by new text
      expect(find.text("The text is different this time"), findsOneWidget);
      //Previously tapped twice. Should still display 2
      expect(find.text("2"), findsOneWidget);

      //should still be able to tap and effect state
      await tester.tap(find.byKey(Key("increment")));
      await tester.pumpAndSettle();
      expect(find.text("3"), findsOneWidget);

      //Switch back to original files
      hashPath = "hot/stateful/counter1.lc.sha256";
      bytecodePath = "hot/stateful/counter1.lc";

      expect(tester.takeException(), isNull);

      await Future.delayed(Duration(seconds: 5));

      await tester.pump();

      expect(find.byKey(Key("counter")), findsOneWidget);
      expect(find.byKey(Key("increment")), findsOneWidget);
      expect(find.text("You have pushed the button this many times"),
          findsOneWidget);
      expect(find.text("3"), findsOneWidget);
    });
  });
}
