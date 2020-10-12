import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/dart/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/dart/swidType.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformFunctionTypeToTs.dart';
import 'package:hydro_sdk/swid/ir/dart/swidDeclarationModifiers.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    //A rough AST of the Ticker class from flutter/src/scheduler.dart
    final tickerClass = SwidClass(
      constructorType: SwidFunctionType(
        namedDefaults: {},
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
              namedDefaults: {},
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
          namedDefaults: {},
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
