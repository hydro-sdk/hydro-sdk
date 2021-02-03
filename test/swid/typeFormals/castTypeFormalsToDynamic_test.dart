import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/util/castAllTypeParametersInClassToDynamic.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/util/castAllTypeParametersInFunctionToDynamic.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    //List<DiagnosticsNode> getProperties();
    var getProperties = SwidFunctionType(
      name: "getProperties",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/foundation/diagnostics.dart",
      swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
      namedParameterTypes: {},
      namedDefaults: {},
      normalParameterNames: [],
      normalParameterTypes: [],
      optionalParameterNames: [],
      optionalParameterTypes: [],
      returnType: SwidType.fromSwidInterface(
        swidInterface: SwidInterface(
          name: "List<DiagnosticsNode>",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "dart:core",
          typeArguments: [
            SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "DiagnosticsNode",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath:
                    "package:flutter/src/foundation/diagnostics.dart",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
              ),
            ),
          ],
          referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
        ),
      ),
      isFactory: false,
      typeFormals: [],
    );

    expect(
      castAllTypeParametersInFunctionToDynamic(
        swidFunctionType: getProperties,
      ).returnType.when(
            fromSwidInterface: (val) => val,
            fromSwidClass: (_) => null,
            fromSwidDefaultFormalParameter: (_) => null,
            fromSwidFunctionType: (_) => null,
          ),
      SwidInterface(
        name: "List",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        originalPackagePath: "dart:core",
        typeArguments: [
          SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "dynamic",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.dynamicType,
            ),
          ),
        ],
        referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
      ),
    );

    expect(
      castAllTypeParametersInFunctionToDynamic(
        swidFunctionType: getProperties,
        preserveTypeParametersInLists: true,
      ).returnType.when(
            fromSwidInterface: (val) => val,
            fromSwidClass: (_) => null,
            fromSwidDefaultFormalParameter: (_) => null,
            fromSwidFunctionType: (_) => null,
          ),
      SwidInterface(
        name: "List<DiagnosticsNode>",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        originalPackagePath: "dart:core",
        typeArguments: [
          SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "DiagnosticsNode",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath:
                  "package:flutter/src/foundation/diagnostics.dart",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
            ),
          ),
        ],
        referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
      ),
    );

    /*
    class Iterable<E> {
     Iterable<E> Iterable();
     E firstWhere(bool test(E element), {E orElse()?})
    }
  */
    var iterable = SwidClass(
        name: "Iterable",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        originalPackagePath: "dart:core",
        implementedClasses: [],
        constructorType: SwidFunctionType(
          name: "",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "",
          swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
          namedParameterTypes: {},
          namedDefaults: {},
          normalParameterNames: [],
          normalParameterTypes: [],
          optionalParameterNames: [],
          optionalParameterTypes: [],
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
                          SwidReferenceDeclarationKind.typeParameterType),
                ),
              ],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
            ),
          ),
          isFactory: false,
          typeFormals: [],
        ),
        factoryConstructors: [],
        staticMethods: [],
        methods: [
          SwidFunctionType(
            name: "firstWhere",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "dart:core",
            swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
            namedParameterTypes: {
              "orElse": SwidType.fromSwidFunctionType(
                swidFunctionType: SwidFunctionType(
                  name: "",
                  nullabilitySuffix: SwidNullabilitySuffix.question,
                  originalPackagePath: "",
                  swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
                  namedParameterTypes: {},
                  namedDefaults: {},
                  normalParameterNames: [],
                  normalParameterTypes: [],
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
                  )),
                  isFactory: false,
                  typeFormals: [],
                ),
              ),
            },
            namedDefaults: {},
            normalParameterNames: ["test"],
            normalParameterTypes: [
              SwidType.fromSwidFunctionType(
                swidFunctionType: SwidFunctionType(
                  name: "",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "",
                  swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
                  namedParameterTypes: {},
                  namedDefaults: {},
                  normalParameterNames: ["element"],
                  normalParameterTypes: [
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
                  optionalParameterNames: [],
                  optionalParameterTypes: [],
                  returnType: SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      name: "bool",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath: "dart:core",
                      typeArguments: [],
                      referenceDeclarationKind:
                          SwidReferenceDeclarationKind.classElement,
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
        ],
        staticConstFieldDeclarations: [],
        instanceFieldDeclarations: {},
        swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
        mixedInClasses: [],
        extendedClass: null,
        isMixin: false,
        typeFormals: [
          SwidTypeFormal(
            value: SwidTypeFormalValue.fromString(string: "E"),
            swidReferenceDeclarationKind:
                SwidReferenceDeclarationKind.typeParameterType,
          )
        ]);

    var castedIterable = castAllTypeParametersInClassToDynamic(
      swidClass: iterable,
      preserveTypeParametersInLists: false,
    );

    expect(
      castedIterable.methods.first.returnType.when(
        fromSwidInterface: (val) => val,
        fromSwidClass: (_) => null,
        fromSwidDefaultFormalParameter: (_) => null,
        fromSwidFunctionType: (_) => null,
      ),
      SwidInterface(
        name: "dynamic",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        originalPackagePath: "",
        typeArguments: [],
        referenceDeclarationKind: SwidReferenceDeclarationKind.dynamicType,
      ),
    );
  }, tags: "swid");
}
