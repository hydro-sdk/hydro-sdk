import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/dart/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/dart/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/dart/swidType.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformFunctionTypeToTs.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    expect(
        //num? foo(int itemCount, [Widget Function([Duration Function(int? millis)? resolveDuration])? onTap])
        transformFunctionTypeToTs(
            swidFunctionType: SwidFunctionType(
              namedDefaults: {},
                swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
                name: "foo",
                originalPackagePath: "",
                normalParameterNames: ["itemCount"],
                normalParameterTypes: [
                  SwidType(
                    name: "int",
                    originalPackagePath: "",
                    nullabilitySuffix: null,
                  ),
                ],
                optionalParameterNames: ["onTap"],
                optionalParameterTypes: [
                  SwidFunctionType(
                    namedDefaults: {},
                      swidDeclarationModifiers:
                          SwidDeclarationModifiers.empty(),
                      name: "",
                      normalParameterNames: [],
                      normalParameterTypes: [],
                      namedParameterTypes: {},
                      optionalParameterNames: ["resolveDuration"],
                      optionalParameterTypes: [
                        SwidFunctionType(
                          namedDefaults: {},
                            swidDeclarationModifiers:
                                SwidDeclarationModifiers.empty(),
                            name: "",
                            normalParameterNames: ["millis"],
                            namedParameterTypes: {},
                            optionalParameterNames: [],
                            optionalParameterTypes: [],
                            normalParameterTypes: [
                              SwidType(
                                name: "int",
                                nullabilitySuffix:
                                    SwidNullabilitySuffix.question,
                                originalPackagePath: "",
                              )
                            ],
                            nullabilitySuffix: SwidNullabilitySuffix.question,
                            originalPackagePath: "",
                            returnType: SwidType(
                              name: "Duration",
                              originalPackagePath: "",
                              nullabilitySuffix: null,
                            ))
                      ],
                      originalPackagePath: "",
                      nullabilitySuffix: SwidNullabilitySuffix.question,
                      returnType: SwidType(
                        name: "Widget",
                        originalPackagePath: "",
                        nullabilitySuffix: null,
                      ))
                ],
                namedParameterTypes: {},
                nullabilitySuffix: SwidNullabilitySuffix.star,
                returnType: SwidType(
                  name: "num",
                  originalPackagePath: "dart:core",
                  nullabilitySuffix: SwidNullabilitySuffix.question,
                ))),
        "(itemCount : int, onTap? : (resolveDuration? : (millis? : int | undefined) => Duration) => Widget) => num | undefined");
  });
}
