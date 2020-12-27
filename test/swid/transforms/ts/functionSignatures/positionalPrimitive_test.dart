import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/transforms/ts/trailingReturnTypeKind.dart';
import 'package:hydro_sdk/swid/transforms/ts/transformFunctionTypeToTs.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    expect(
        //num (int? foo,String bar)
        transformFunctionTypeToTs(
            trailingReturnTypeKind: TrailingReturnTypeKind.fatArrow,
            swidFunctionType: SwidFunctionType(
                isFactory: false,
                namedDefaults: {},
                swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
                name: "",
                originalPackagePath: "",
                normalParameterNames: ["foo", "bar"],
                normalParameterTypes: [
                  SwidType.fromSwidInterface(
                      swidInterface: SwidInterface(
                    typeArguments: [],
                    name: "int",
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.classElement,
                    nullabilitySuffix: SwidNullabilitySuffix.question,
                    originalPackagePath: "dart:core",
                  )),
                  SwidType.fromSwidInterface(
                      swidInterface: SwidInterface(
                          typeArguments: [],
                          name: "String",
                          referenceDeclarationKind:
                              SwidReferenceDeclarationKind.classElement,
                          nullabilitySuffix: SwidNullabilitySuffix.star,
                          originalPackagePath: "dart:core")),
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
                  nullabilitySuffix: SwidNullabilitySuffix.star,
                )))),
        "(foo: int | undefined, bar: String) => num");
  }, tags: "swid");
}
