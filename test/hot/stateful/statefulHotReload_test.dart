import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/cfr/buildProfile.dart';
import 'package:hydro_sdk/cfr/moduleDebugInfo.dart';
import 'package:hydro_sdk/hc.g.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/runFromNetwork.dart';
import 'package:hydro_sdk/testMode.dart';

void main() {
  testWidgets('stateful hot reload', (WidgetTester tester) async {
    await tester.runAsync(() async {
      var testMode = getTestMode();
      expect(testMode, isNotNull);

      //If we're not running Typescript tests, the fixtures for this test weren't built
      if (testMode != TestMode.typescript) {
        return;
      }

      String hashPath = "assets/test/hot/stateful/counter1.ts.hc.sha256";
      String bytecodePath = "assets/test/hot/stateful/counter1.ts.hc";
      String symbolsPath = "assets/test/hot/stateful/counter1.ts.hc.symbols";

      HydroState state = HydroState();
      var closure = await state.loadBuffer(
          buffer: File(bytecodePath).readAsBytesSync(),
          name: bytecodePath,
          linkStatus: null,
          thunks: null);

      //This test doesn't make any sense if the fixtures were built in release mode.
      //Hot reload doesn't work in release mode.
      if (closure.closure.buildProfile == BuildProfile.mixed ||
          closure.closure.buildProfile == BuildProfile.release) {
        return;
      }

      WidgetsFlutterBinding.ensureInitialized();
      await tester.pumpWidget(RunFromNetwork(
        args: [],
        thunks: thunks,
        filePath: "",
        baseUrl: "http://127.0.0.1:3000/hot/stateful/counter.hc",
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
        downloadDebugInfo: (String uri) async {
          var file = File(symbolsPath);
          var res = file.readAsStringSync();
          return json
              .decode(res)
              ?.map((x) => ModuleDebugInfo.fromJson(x))
              ?.toList()
              ?.cast<ModuleDebugInfo>();
        },
      ));

      expect(tester.takeException(), isNull);
      await Future.delayed(Duration(seconds: 5));

      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);

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
      hashPath = "assets/test/hot/stateful/counter2.ts.hc.sha256";
      bytecodePath = "assets/test/hot/stateful/counter2.ts.hc";
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);

      expect(tester.takeException(), isNull);

      await Future.delayed(Duration(seconds: 5));
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);

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
      hashPath = "assets/test/hot/stateful/counter1.ts.hc.sha256";
      bytecodePath = "assets/test/hot/stateful/counter1.ts.hc";
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);

      expect(tester.takeException(), isNull);

      await Future.delayed(Duration(seconds: 5));

      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);

      expect(find.byKey(Key("counter")), findsOneWidget);
      expect(find.byKey(Key("increment")), findsOneWidget);
      expect(find.text("You have pushed the button this many times"),
          findsOneWidget);
      expect(find.text("3"), findsOneWidget);
    });
  }, tags: "hot");
}
