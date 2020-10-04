import 'dart:io';
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/transforms/transformAccessorNames.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformPrimitiveClassTypeNamesToTs.dart';
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

    expect(TsInterface.fromSwidClass(swidClass: tickerClass).toTsSource(), """
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
                swidClass: transformPrimitiveClassTypeNamesToTs(
                    swidClass: transformAccessorNames(swidClass: tickerClass)))
            .toTsSource(),
        """
export ITicker {
    getMuted: () => boolean;
    setMuted: (value : boolean) => void;
    getIsTicking: () => boolean;
    getIsActive: () => boolean;
    start: () => TickerFuture;
    describeForError: (name : string) => DiagnosticsNode;
    stop: () => void;
    absorbTicker: (originalTicker : Ticker) => void;
    dispose: () => void;
    toString: () => string;
}""");
//need to transform primitive type names still
  });
}
