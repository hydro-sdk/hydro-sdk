import 'dart:convert';
import 'dart:io';

import 'package:hydro_sdk/cfr/buildProfile.dart';
import 'package:hydro_sdk/cfr/moduleDebugInfo.dart';
import 'package:hydro_sdk/cfr/vm/hydroError.dart';
import 'package:hydro_sdk/hc.g.dart';
import 'package:hydro_sdk/hydroState.dart';
import 'package:hydro_sdk/runFromNetwork.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('', (WidgetTester tester) async {
    await tester.runAsync(() async {
      String hashPath = "../assets/test/widget/stackTrace-2.ts.hc.sha256";
      String bytecodePath = "../assets/test/widget/stackTrace-2.ts.hc";
      String symbolsPath = "../assets/test/widget/stackTrace-2.ts.hc.symbols";

      HydroState state = HydroState();
      var closure = await state.loadBuffer(
          buffer: File(bytecodePath).readAsBytesSync(),
          name: bytecodePath,
          linkStatus: null,
          thunks: null);

      //This test doesn't make any sense if the fixtures were built in release mode.
      if (closure.closure.buildProfile == BuildProfile.mixed ||
          closure.closure.buildProfile == BuildProfile.release) {
        return;
      }

      WidgetsFlutterBinding.ensureInitialized();
      await tester.pumpWidget(RunFromNetwork(
        args: [],
        thunks: thunks,
        baseUrl: "http://127.0.0.1:3000/test/widget/stackTrace-2.hc",
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

      await Future.delayed(Duration(seconds: 5));

      await tester.pump();

      HydroError exception = tester.takeException();

      expect(exception, isNotNull);
      expect(
          exception.extractedSymbols[0].symbolName, "HelperClass.helperClass2");
      expect(exception.extractedSymbols[0].originalFileName,
          "test/widget/stackTrace-2.ts");
      expect(exception.extractedSymbols[0].originalLineStart, 36);

      expect(
          exception.extractedSymbols[1].symbolName, "HelperClass.helperClass1");
      expect(exception.extractedSymbols[1].originalFileName,
          "test/widget/stackTrace-2.ts");
      expect(exception.extractedSymbols[1].originalLineStart, 32);

      expect(exception.extractedSymbols[2].symbolName,
          "HelperClass.prototype.____constructor");
      expect(exception.extractedSymbols[2].originalFileName,
          "test/widget/stackTrace-2.ts");
      expect(exception.extractedSymbols[2].originalLineStart, 27);

      expect(exception.extractedSymbols[3].symbolName, "__TS__New");
      expect(exception.extractedSymbols[3].originalFileName, "lualib_bundle");

      expect(exception.extractedSymbols[4].symbolName, "helperFunction");
      expect(exception.extractedSymbols[4].originalFileName,
          "test/widget/stackTrace-2.ts");
      expect(exception.extractedSymbols[4].originalLineStart, 42);

      expect(
          exception.extractedSymbols[5].symbolName, "MyWidget.prototype.build");
      expect(exception.extractedSymbols[5].originalFileName,
          "test/widget/stackTrace-2.ts");
      expect(exception.extractedSymbols[5].originalLineStart, 56);
    });
  });
}
