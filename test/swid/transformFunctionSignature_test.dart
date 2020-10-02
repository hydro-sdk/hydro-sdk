import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformFunctionTypeToTs.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    //A rough AST of the Ticker class from flutter/src/scheduler.dart
    final tickerClass = SwidClass(
      constructorType: SwidFunctionType(
          swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
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
                swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
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
      methods: [
        SwidFunctionType(
          name: "muted",
          namedParameterTypes: {},
          normalParameterNames: [],
          normalParameterTypes: [],
          nullabilitySuffix: SwidNullabilitySuffix.star,
          optionalParameterNames: [],
          optionalParameterTypes: [],
          swidDeclarationModifiers: SwidDeclarationModifiers.syntheticGetter(),
          returnType: SwidType(
            name: "bool",
            nullabilitySuffix: SwidNullabilitySuffix.star,
            originalPackagePath: "dart:core",
          ),
          originalPackagePath: "",
        ),
        SwidFunctionType(
          name: "muted=",
        )
      ],
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
