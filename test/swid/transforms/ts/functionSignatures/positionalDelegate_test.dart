import 'package:flutter_test/flutter_test.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformFunctionTypeToTs.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    expect(
        //num? (Widget Function() foo)
        transformFunctionTypeToTs(
            swidFunctionType: SwidFunctionType(
                namedDefaults: {},
                swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
                name: "",
                originalPackagePath: "",
                normalParameterNames: ["foo"],
                normalParameterTypes: [
                  SwidType.fromSwidFunctionType(
                      swidFunctionType: SwidFunctionType(
                          namedDefaults: {},
                          swidDeclarationModifiers:
                              SwidDeclarationModifiers.empty(),
                          name: "",
                          nullabilitySuffix: SwidNullabilitySuffix.star,
                          originalPackagePath: "",
                          namedParameterTypes: {},
                          normalParameterNames: [],
                          normalParameterTypes: [],
                          optionalParameterNames: [],
                          optionalParameterTypes: [],
                          returnType: SwidType.fromSwidInterface(
                              swidInterface: SwidInterface(
                            typeArguments: [],
                            name: "Widget",
                            referenceDeclarationKind:
                                SwidReferenceDeclarationKind.classElement,
                            originalPackagePath: "",
                            nullabilitySuffix: SwidNullabilitySuffix.star,
                          ))))
                ],
                optionalParameterNames: [],
                optionalParameterTypes: [],
                namedParameterTypes: {},
                nullabilitySuffix: SwidNullabilitySuffix.star,
                returnType: SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                  typeArguments: [],
                  name: "num",
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.classElement,
                  originalPackagePath: "dart:core",
                  nullabilitySuffix: SwidNullabilitySuffix.question,
                )))),
        "(foo : () => Widget) => num | undefined");
  }, tags: "swid");
}
