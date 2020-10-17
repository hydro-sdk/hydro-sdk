import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/dart/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/dart/swidInterface.dart';
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
                  SwidType.fromSwidInterface(
                      swidInterface: SwidInterface(
                    name: "int",
                    originalPackagePath: "",
                    nullabilitySuffix: null,
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
                                      name: "Duration",
                                      originalPackagePath: "",
                                      nullabilitySuffix: null,
                                    ))))
                          ],
                          originalPackagePath: "",
                          nullabilitySuffix: SwidNullabilitySuffix.question,
                          returnType: SwidType.fromSwidInterface(
                              swidInterface: SwidInterface(
                            name: "Widget",
                            originalPackagePath: "",
                            nullabilitySuffix: null,
                          ))))
                ],
                namedParameterTypes: {},
                nullabilitySuffix: SwidNullabilitySuffix.star,
                returnType: SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                  name: "num",
                  originalPackagePath: "dart:core",
                  nullabilitySuffix: SwidNullabilitySuffix.question,
                )))),
        "(itemCount : int, onTap? : (resolveDuration? : (millis? : int | undefined) => Duration) => Widget) => num | undefined");
  });
}
