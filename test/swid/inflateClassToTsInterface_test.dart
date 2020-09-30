import 'dart:io';
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/swidClass.dart';
import 'package:hydro_sdk/swid/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/swidFunctionType.dart';
import 'package:hydro_sdk/swid/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/swidType.dart';
import 'package:hydro_sdk/swid/transformAccessorName.dart';
import 'package:hydro_sdk/swid/transformAccessorNames.dart';
import 'package:hydro_sdk/swid/transformFunctionTypeToTs.dart';
import 'package:hydro_sdk/swid/tsInterface.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var tickerClass = SwidClass.fromJson(
        json.decode(File("test/swid/res/Ticker.json").readAsStringSync()));
    var tickerCtorInterface = TsInterface.fromSwidFunctiontype(
        swidFunctionType: tickerClass.constructorType, name: "Ticker");
    expect(tickerCtorInterface.name, "TickerProps");

    var debugLabel = tickerCtorInterface.members["debugLabel"];
    expect(debugLabel, isNotNull);
    expect(debugLabel.name, "String");

    var iTicker = TsInterface.fromSwidClass(swidClass: tickerClass);

    expect(iTicker.toTsSource(), """
export ITicker {
    muted: () => bool;
    muted=: (value : bool) => void;
    isTicking: () => bool;
    isActive: () => bool;
    start: () => TickerFuture;
    describeForError: (name : String) => DiagnosticsNode;
    stop: () => void;
    absorbTicker: (originalTicker : Ticker) => void;
    dispose: () => void;
    toString: () => String;
}""");

    expect(
        TsInterface.fromSwidClass(
                swidClass: transformAccessorNames(swidClass: tickerClass))
            .toTsSource(),
        """
export ITicker {
    getMuted: () => bool;
    setMuted: (value : bool) => void;
    getIsTicking: () => bool;
    getIsActive: () => bool;
    start: () => TickerFuture;
    describeForError: (name : String) => DiagnosticsNode;
    stop: () => void;
    absorbTicker: (originalTicker : Ticker) => void;
    dispose: () => void;
    toString: () => String;
}""");
//need to transform primitive type names still
  });
}
