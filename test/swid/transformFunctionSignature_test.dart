import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/swidClass.dart';
import 'package:hydro_sdk/swid/swidFunctionType.dart';
import 'package:hydro_sdk/swid/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/swidType.dart';
import 'package:hydro_sdk/swid/transformFunctionTypeToTs.dart';
import 'package:path/path.dart' as path;
import 'package:hydro_sdk/swid/transformPackageUri.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    //A rough AST of the Ticker class from flutter/src/scheduler.dart
    final tickerClass = SwidClass(
      constructorType: SwidFunctionType(
          name: "",
          namedParameterTypes: {
            "debugLabel": SwidType(
                name: "String",
                nullabilitySuffix: SwidNullabilitySuffix.star,
                originalPackagePath: "dart:core"),
          },
          normalParameterNames: ["_onTick"],
          normalParameterTypes: [
            SwidFunctionType(
                name: null,
                namedParameterTypes: {},
                normalParameterNames: ["elapsed"],
                normalParameterTypes: [
                  SwidType(
                      name: "Duration",
                      nullabilitySuffix: SwidNullabilitySuffix.star,
                      originalPackagePath: "dart:core")
                ],
                nullabilitySuffix: SwidNullabilitySuffix.star,
                optionalParameterNames: [],
                optionalParameterTypes: [],
                originalPackagePath:
                    "package:flutter/src/scheduler/ticker.dart",
                returnType: SwidType(
                  name: "void",
                  nullabilitySuffix: SwidNullabilitySuffix.star,
                  originalPackagePath: "",
                )),
          ],
          nullabilitySuffix: SwidNullabilitySuffix.star,
          optionalParameterNames: [],
          optionalParameterTypes: [],
          originalPackagePath: "package:flutter/src/scheduler/ticker.dart",
          returnType: SwidType(
            name: "Ticker",
            nullabilitySuffix: SwidNullabilitySuffix.star,
            originalPackagePath: "package:flutter/src/scheduler/ticker.dart",
          )),
      name: "Ticker",
      nullabilitySuffix: null,
      originalPackagePath: "package:flutter/src/scheduler/ticker.dart",
    );
    expect(
        transformFunctionTypeToTs(
            swidFunctionType: tickerClass.constructorType),
        "(_onTick : (elapsed : Duration) => void) => Ticker");
  });
}
