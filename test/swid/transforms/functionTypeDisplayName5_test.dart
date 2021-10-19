import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final ir = SwidFunctionType(
      name: "map",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "dart:core",
      declarationModifiers: SwidDeclarationModifiers.empty(),
      namedParameterTypes: {},
      namedDefaults: {},
      normalParameterNames: [
        "f",
      ],
      normalParameterTypes: [
        SwidType.fromSwidFunctionType(
          swidFunctionType: SwidFunctionType(
            name: "",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "",
            declarationModifiers: SwidDeclarationModifiers.empty(),
            namedParameterTypes: {},
            namedDefaults: {},
            normalParameterNames: [
              "e",
            ],
            normalParameterTypes: [
              SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  declarationModifiers: SwidDeclarationModifiers.empty(),
                  name: "E",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "dart:core",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.typeParameterType,
                ),
              ),
            ],
            optionalParameterNames: [],
            optionalParameterTypes: [],
            returnType: SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                declarationModifiers: SwidDeclarationModifiers.empty(),
                name: "T",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:core",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.typeParameterType,
              ),
            ),
            isFactory: false,
            typeFormals: [],
          ),
        ),
      ],
      optionalParameterNames: [],
      optionalParameterTypes: [],
      returnType: SwidType.fromSwidInterface(
        swidInterface: SwidInterface(
          declarationModifiers: SwidDeclarationModifiers.empty(),
          name: "Iterable<T>",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "dart:core",
          typeArguments: [
            SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                declarationModifiers: SwidDeclarationModifiers.empty(),
                name: "T",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:core",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.typeParameterType,
              ),
            )
          ],
          referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
        ),
      ),
      isFactory: false,
      typeFormals: [
        SwidTypeFormal(
          value: SwidTypeFormalValue.fromString(
            string: "T",
          ),
          swidReferenceDeclarationKind:
              SwidReferenceDeclarationKind.typeParameterType,
        ),
      ],
    );

    expect(ir.displayName, "Iterable<T> Function<T>(T f(E e))");
  }, tags: "swid");
}
