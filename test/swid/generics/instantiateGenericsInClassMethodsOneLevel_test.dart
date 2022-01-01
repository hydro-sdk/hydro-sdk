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
import 'package:hydro_sdk/swid/ir/swidTypeArgumentType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateGeneric.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var iterable = SwidClass(
      name: "Iterable",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "dart:core",
      constructorType: null,
      generativeConstructors: [],
      factoryConstructors: [],
      staticMethods: [],
      methods: [
        SwidFunctionType(
          name: "expand",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "dart:core",
          declarationModifiers: SwidDeclarationModifiers.empty(),
          namedParameterTypes: {},
          namedDefaults: {},
          normalParameterNames: ["f"],
          normalParameterTypes: [
            SwidType.fromSwidFunctionType(
              swidFunctionType: SwidFunctionType(
                name: "",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "",
                declarationModifiers: SwidDeclarationModifiers.empty(),
                namedParameterTypes: {},
                namedDefaults: {},
                normalParameterNames: ["element"],
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
                    name: "Iterable<T>",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath: "dart:core",
                    typeArguments: [
                      SwidTypeArgumentType(
                        type: SwidType.fromSwidInterface(
                          swidInterface: SwidInterface(
                            declarationModifiers:
                                SwidDeclarationModifiers.empty(),
                            name: "T",
                            nullabilitySuffix: SwidNullabilitySuffix.none,
                            originalPackagePath: "dart:core",
                            typeArguments: [],
                            referenceDeclarationKind:
                                SwidReferenceDeclarationKind.typeParameterType,
                          ),
                        ),
                        element: null,
                      ),
                    ],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.classElement,
                  ),
                ),
                isFactory: false,
                typeFormals: [],
              ),
            )
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
                SwidTypeArgumentType(
                  type: SwidType.fromSwidInterface(
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
                  element: null,
                ),
              ],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
            ),
          ),
          isFactory: false,
          typeFormals: [
            SwidTypeFormal(
              swidTypeFormalBound: null,
              value: SwidTypeFormalValue.fromString(
                string: "T",
              ),
              swidReferenceDeclarationKind:
                  SwidReferenceDeclarationKind.typeParameterType,
            )
          ],
        ),
      ],
      staticConstFieldDeclarations: [],
      instanceFieldDeclarations: {},
      declarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      implementedClasses: [],
      extendedClass: null,
      isMixin: false,
      typeFormals: [
        SwidTypeFormal(
          swidTypeFormalBound: null,
          value: SwidTypeFormalValue.fromString(
            string: "E",
          ),
          swidReferenceDeclarationKind:
              SwidReferenceDeclarationKind.typeParameterType,
        )
      ],
    );

    var replacedIterable = CachingPipeline(
      cacheMgr: const PipelineNoopCacheMgr(),
    )
        .reduceFromTerm(
          InstantiateGeneric(
            genericInstantiator: SwidGenericInstantiator(
              name: "E",
              instantiatedGeneric:
                  SwidInstantiatedGeneric.fromSwidInstantiableGeneric(
                swidInstantiableGeneric:
                    SwidInstantiableGeneric.fromSwidInterface(
                        swidInterface: dartDouble),
              ),
            ),
            swidType: SwidType.fromSwidClass(
              swidClass: iterable,
            ),
          ),
        )
        .when(
          fromSwidInterface: (_) => dartUnknownClass,
          fromSwidClass: (val) => val,
          fromSwidDefaultFormalParameter: (_) => dartUnknownClass,
          fromSwidFunctionType: (_) => dartUnknownClass,
        );

    //All instances of T should be left alone
    expect(replacedIterable.methods.first.typeFormals.isNotEmpty, true);
    expect(replacedIterable.methods.first.typeFormals.first.value.displayName,
        "T");
    expect(replacedIterable.methods.first.typeFormals,
        iterable.methods.first.typeFormals);
    expect(
        replacedIterable.methods.first.returnType.displayName, "Iterable<T>");
    expect(replacedIterable.methods.first.returnType,
        iterable.methods.first.returnType);
    expect(
        replacedIterable.methods.first.normalParameterTypes.first
            .maybeWhen(fromSwidFunctionType: (val) => val, orElse: () => null)!
            .returnType
            .displayName,
        "Iterable<T>");
    expect(
        replacedIterable.methods.first.normalParameterTypes.first
            .maybeWhen(fromSwidFunctionType: (val) => val, orElse: () => null)!
            .returnType,
        iterable.methods.first.normalParameterTypes.first
            .maybeWhen(fromSwidFunctionType: (val) => val, orElse: () => null)!
            .returnType);
    //E should have been replaced with double
    expect(
        replacedIterable.methods.first.normalParameterTypes.first
            .maybeWhen(fromSwidFunctionType: (val) => val, orElse: () => null)!
            .normalParameterTypes
            .first
            .maybeWhen(fromSwidInterface: (val) => val, orElse: () => null),
        dartDouble);
  }, tags: "swid");
}
