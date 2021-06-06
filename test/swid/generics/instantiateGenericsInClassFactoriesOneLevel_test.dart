import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidGenericInstantiator.dart';
import 'package:hydro_sdk/swid/ir/swidInstantiableGeneric.dart';
import 'package:hydro_sdk/swid/ir/swidInstantiatedGeneric.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/util/instantiateGeneric.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var iterable = SwidClass(
      name: "Iterable",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "dart:core",
      constructorType: null,
      factoryConstructors: [
        SwidFunctionType(
          name: "generate",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "",
          swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
          namedParameterTypes: {},
          namedDefaults: {},
          normalParameterNames: ["count"],
          normalParameterTypes: [
            SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "int",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:core",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
              ),
            ),
          ],
          optionalParameterNames: ["generator"],
          optionalParameterTypes: [
            SwidType.fromSwidFunctionType(
              swidFunctionType: SwidFunctionType(
                name: "",
                nullabilitySuffix: SwidNullabilitySuffix.question,
                originalPackagePath: "",
                swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
                namedParameterTypes: {},
                namedDefaults: {},
                normalParameterNames: ["index"],
                normalParameterTypes: [
                  SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      name: "int",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath: "dart:core",
                      typeArguments: [],
                      referenceDeclarationKind:
                          SwidReferenceDeclarationKind.classElement,
                    ),
                  ),
                ],
                optionalParameterNames: [],
                optionalParameterTypes: [],
                returnType: SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    name: "E",
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
            )
          ],
          returnType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "Iterable<E>",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:core",
              typeArguments: [
                SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    name: "E",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath: "dart:core",
                    typeArguments: [],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.typeParameterType,
                  ),
                ),
              ],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
            ),
          ),
          isFactory: true,
          typeFormals: [],
        ),
      ],
      staticMethods: [],
      methods: [],
      staticConstFieldDeclarations: [],
      instanceFieldDeclarations: {},
      swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      implementedClasses: [],
      extendedClass: null,
      isMixin: false,
      typeFormals: [
        SwidTypeFormal(
          value: SwidTypeFormalValue.fromString(string: "E"),
          swidReferenceDeclarationKind:
              SwidReferenceDeclarationKind.typeParameterType,
        )
      ],
    );

    var replacedIterable = instantiateGeneric(
      genericInstantiator: SwidGenericInstantiator(
        name: "E",
        instantiatedGeneric:
            SwidInstantiatedGeneric.fromSwidInstantiableGeneric(
          swidInstantiableGeneric: SwidInstantiableGeneric.fromSwidInterface(
            swidInterface: dartDouble,
          ),
        ),
      ),
      swidType: SwidType.fromSwidClass(
        swidClass: iterable,
      ),
    ).when(
      fromSwidInterface: (_) => dartUnknownClass ,
      fromSwidClass: (val) => val,
      fromSwidDefaultFormalParameter: (_) => dartUnknownClass,
      fromSwidFunctionType: (_) => dartUnknownClass,
    );

    expect(replacedIterable.typeFormals.isNotEmpty, true);
    expect(replacedIterable.typeFormals.first.value.displayName, "double");

    //The return type of the optional generator parameter to Iterable.generate should be replaced
    //with a double
    expect(
        replacedIterable.factoryConstructors.first.optionalParameterTypes.first
            .maybeWhen(fromSwidFunctionType: (val) => val, orElse: () => null)!
            .returnType
            .maybeWhen(fromSwidInterface: (val) => val, orElse: () => null),
        dartDouble);

    var generateReturnType = replacedIterable
        .factoryConstructors.first.returnType
        .maybeWhen(fromSwidInterface: (val) => val, orElse: (() => null) as SwidInterface Function());

    //The return type of Iterable.generate should be Iterable<double>
    expect(
        generateReturnType.typeArguments.first
            .maybeWhen(fromSwidInterface: (val) => val, orElse: () => null),
        dartDouble);
    expect(generateReturnType.displayName, "Iterable<double>");
  }, tags: "swid");
}
