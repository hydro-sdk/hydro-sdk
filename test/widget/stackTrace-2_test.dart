import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/cfr/buildProfile.dart';
import 'package:hydro_sdk/cfr/vm/hydroError.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/integrationTestHarness.dart';

void main() {
  testWidgets('', (WidgetTester tester) async {
    await tester.runAsync(() async {
      String fixturePath = "assets/test/widget/stackTrace-2.ts";

      HydroState state = HydroState();
      var closure = await state.loadBuffer(
          buffer: File("$fixturePath.hc").readAsBytesSync(),
          name: fixturePath,
          linkStatus: null,
          thunks: null);

      //This test doesn't make any sense if the fixtures were built in release mode.
      if (closure.closure.buildProfile == BuildProfile.mixed ||
          closure.closure.buildProfile == BuildProfile.release) {
        return;
      }

      WidgetsFlutterBinding.ensureInitialized();
      await tester.pumpWidget(integrationTestHarness(fixturePath));

      await Future.delayed(Duration(seconds: 5));

      await tester.pump();

      HydroError exception = tester.takeException();

      expect(exception, isNotNull);
      expect(
          exception.extractedSymbols[0].symbolName, "HelperClass.helperClass2");
      expect(exception.extractedSymbols[0].originalFileName,
          "test/widget/stackTrace-2.ts");
      expect(exception.extractedSymbols[0].originalLineStart, 29);

      expect(
          exception.extractedSymbols[1].symbolName, "HelperClass.helperClass1");
      expect(exception.extractedSymbols[1].originalFileName,
          "test/widget/stackTrace-2.ts");
      expect(exception.extractedSymbols[1].originalLineStart, 26);

      expect(exception.extractedSymbols[2].symbolName,
          "HelperClass.prototype.____constructor");
      expect(exception.extractedSymbols[2].originalFileName,
          "test/widget/stackTrace-2.ts");
      expect(exception.extractedSymbols[2].originalLineStart, 22);

      expect(exception.extractedSymbols[3].symbolName, "__TS__New");
      expect(exception.extractedSymbols[3].originalFileName, "lualib_bundle");

      expect(exception.extractedSymbols[4].symbolName, "helperFunction");
      expect(exception.extractedSymbols[4].originalFileName,
          "test/widget/stackTrace-2.ts");
      expect(exception.extractedSymbols[4].originalLineStart, 34);

      expect(
          exception.extractedSymbols[5].symbolName, "MyWidget.prototype.build");
      expect(exception.extractedSymbols[5].originalFileName,
          "test/widget/stackTrace-2.ts");
      expect(exception.extractedSymbols[5].originalLineStart, 45);
    });
  }, tags: "widget");
}
