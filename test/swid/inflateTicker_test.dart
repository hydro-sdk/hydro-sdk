import 'dart:io';
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/dart/swidClass.dart';
import 'package:hydro_sdk/swid/transforms/transformAccessorNames.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformPrimitiveClassTypeNamesToTs.dart';
import 'package:hydro_sdk/swid/ir/ts/tsInterface.dart';

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
    _dart_muted: () => bool;
    _dart_muted=: (value : bool) => void;
    _dart_isTicking: () => bool;
    _dart_isActive: () => bool;
    _dart_start: () => TickerFuture;
    _dart_describeForError: (name : String) => DiagnosticsNode;
    _dart_stop: () => void;
    _dart_absorbTicker: (originalTicker : Ticker) => void;
    _dart_dispose: () => void;
    _dart_toString: () => String;
}""");

    expect(
        TsInterface.fromSwidClass(
                swidClass: transformPrimitiveClassTypeNamesToTs(
                    swidClass: transformAccessorNames(swidClass: tickerClass)))
            .toTsSource(),
        """
export ITicker {
    _dart_getMuted: () => boolean;
    _dart_setMuted: (value : boolean) => void;
    _dart_getIsTicking: () => boolean;
    _dart_getIsActive: () => boolean;
    _dart_start: () => TickerFuture;
    _dart_describeForError: (name : string) => DiagnosticsNode;
    _dart_stop: () => void;
    _dart_absorbTicker: (originalTicker : Ticker) => void;
    _dart_dispose: () => void;
    _dart_toString: () => string;
}""");
//need to transform primitive type names still
  });
}
