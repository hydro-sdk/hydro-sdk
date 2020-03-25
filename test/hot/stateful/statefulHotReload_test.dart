import 'dart:io';

import 'package:flua/runFromNetwork.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('stateful hot reload', (WidgetTester tester) async {
    String hashPath = "test/hot/stateful/counter1.lc.sha256";
    String bytecodePath = "test/hot/stateful/counter1.lc";

    WidgetsFlutterBinding.ensureInitialized();
    await tester.pumpWidget(RunFromNetwork(
      baseUrl: "http://127.0.0.1:3000/test/hot/stateful/counter.lc",
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

    await tester.pump(Duration(seconds: 2));

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
