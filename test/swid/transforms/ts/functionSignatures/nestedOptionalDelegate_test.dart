import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
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
                  SwidType.fromSwidInterface(
                      swidInterface: SwidInterface(
                    typeArguments: [],
                    name: "int",
                    originalPackagePath: "",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                  )),
                ],
                optionalParameterNames: ["onTap"],
                optionalParameterTypes: [
                  SwidType.fromSwidFunctionType(
                      swidFunctionType: SwidFunctionType(
                          namedDefaults: {},
                          swidDeclarationModifiers:
                              SwidDeclarationModifiers.empty(),
                          name: "",
                          normalParameterNames: [],
                          normalParameterTypes: [],
                          namedParameterTypes: {},
                          optionalParameterNames: ["resolveDuration"],
                          optionalParameterTypes: [
                            SwidType.fromSwidFunctionType(
                                swidFunctionType: SwidFunctionType(
                                    namedDefaults: {},
                                    swidDeclarationModifiers:
                                        SwidDeclarationModifiers.empty(),
                                    name: "",
                                    normalParameterNames: ["millis"],
                                    namedParameterTypes: {},
                                    optionalParameterNames: [],
                                    optionalParameterTypes: [],
                                    normalParameterTypes: [
                                      SwidType.fromSwidInterface(
                                          swidInterface: SwidInterface(
                                        typeArguments: [],
                                        name: "int",
                                        nullabilitySuffix:
                                            SwidNullabilitySuffix.question,
                                        originalPackagePath: "",
                                      ))
                                    ],
                                    nullabilitySuffix:
                                        SwidNullabilitySuffix.question,
                                    originalPackagePath: "",
                                    returnType: SwidType.fromSwidInterface(
                                        swidInterface: SwidInterface(
                                      typeArguments: [],
                                      name: "Duration",
                                      originalPackagePath: "",
                                      nullabilitySuffix:
                                          SwidNullabilitySuffix.none,
                                    ))))
                          ],
                          originalPackagePath: "",
                          nullabilitySuffix: SwidNullabilitySuffix.question,
                          returnType: SwidType.fromSwidInterface(
                              swidInterface: SwidInterface(
                            typeArguments: [],
                            name: "Widget",
                            originalPackagePath: "",
                            nullabilitySuffix: SwidNullabilitySuffix.none,
                          ))))
                ],
                namedParameterTypes: {},
                nullabilitySuffix: SwidNullabilitySuffix.star,
                returnType: SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                  typeArguments: [],
                  name: "num",
                  originalPackagePath: "dart:core",
                  nullabilitySuffix: SwidNullabilitySuffix.question,
                )))),
        "(itemCount : int, onTap? : (resolveDuration? : (millis? : int | undefined) => Duration) => Widget) => num | undefined");
  }, tags: "swid");
}
