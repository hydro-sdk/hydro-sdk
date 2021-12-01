import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/analyses/hasInheritedMustCallSuperAnnotation.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final ir = SwidClass(
      name: "ComponentElement",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/widgets/framework.dart",
      constructorType: null,
      generativeConstructors: [],
      factoryConstructors: [],
      staticMethods: [],
      methods: [],
      staticConstFieldDeclarations: [],
      instanceFieldDeclarations: {},
      declarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      implementedClasses: [],
      isMixin: false,
      typeFormals: [],
      extendedClass: SwidClass(
        name: "Element",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        originalPackagePath: "package:flutter/src/widgets/framework.dart",
        constructorType: null,
        generativeConstructors: [],
        factoryConstructors: [],
        staticMethods: [],
        methods: [
          SwidFunctionType(
            name: "debugFillProperties",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "package:flutter/src/widgets/framework.dart",
            namedParameterTypes: {},
            namedDefaults: {},
            normalParameterNames: [
              "properties",
            ],
            normalParameterTypes: [
              SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  name: "DiagnosticPropertiesBuilder",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath:
                      "package:flutter/src/widgets/foundation/diagnostics.dart",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.classElement,
                  declarationModifiers: SwidDeclarationModifiers.empty(),
                ),
              )
            ],
            optionalParameterNames: [],
            optionalParameterTypes: [],
            returnType: SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "void",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "",
                typeArguments: [],
                referenceDeclarationKind: SwidReferenceDeclarationKind.voidType,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            ),
            isFactory: false,
            typeFormals: [],
            declarationModifiers: SwidDeclarationModifiers.empty(),
          )
        ],
        staticConstFieldDeclarations: [],
        instanceFieldDeclarations: {},
        declarationModifiers: SwidDeclarationModifiers.empty(),
        mixedInClasses: [],
        implementedClasses: [],
        isMixin: false,
        typeFormals: [],
        extendedClass: SwidClass(
          name: "DiagnosticableTree",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath:
              "package:flutter/src/foundation/diagnostics.dart",
          constructorType: null,
          generativeConstructors: [],
          factoryConstructors: [],
          staticMethods: [],
          methods: [],
          staticConstFieldDeclarations: [],
          instanceFieldDeclarations: {},
          declarationModifiers: SwidDeclarationModifiers.empty(),
          mixedInClasses: [
            SwidClass(
              name: "Diagnosticable",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath:
                  "package:flutter/src/foundation/diagnostics.dart",
              constructorType: null,
              generativeConstructors: [],
              factoryConstructors: [],
              staticMethods: [],
              methods: [
                SwidFunctionType(
                  name: "debugFillProperties",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath:
                      "package:flutter/src/widgets/framework.dart",
                  namedParameterTypes: {},
                  namedDefaults: {},
                  normalParameterNames: [
                    "properties",
                  ],
                  normalParameterTypes: [
                    SwidType.fromSwidInterface(
                      swidInterface: SwidInterface(
                        name: "DiagnosticPropertiesBuilder",
                        nullabilitySuffix: SwidNullabilitySuffix.none,
                        originalPackagePath:
                            "package:flutter/src/widgets/foundation/diagnostics.dart",
                        typeArguments: [],
                        referenceDeclarationKind:
                            SwidReferenceDeclarationKind.classElement,
                        declarationModifiers: SwidDeclarationModifiers.empty(),
                      ),
                    )
                  ],
                  optionalParameterNames: [],
                  optionalParameterTypes: [],
                  returnType: SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      name: "void",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath: "",
                      typeArguments: [],
                      referenceDeclarationKind:
                          SwidReferenceDeclarationKind.voidType,
                      declarationModifiers: SwidDeclarationModifiers.empty(),
                    ),
                  ),
                  isFactory: false,
                  typeFormals: [],
                  declarationModifiers: SwidDeclarationModifiers.empty().clone(
                    hasMustCallSuper: true,
                  ),
                )
              ],
              staticConstFieldDeclarations: [],
              instanceFieldDeclarations: {},
              declarationModifiers: SwidDeclarationModifiers.empty(),
              mixedInClasses: [],
              implementedClasses: [],
              isMixin: false,
              typeFormals: [],
            )
          ],
          implementedClasses: [],
          isMixin: false,
          typeFormals: [],
        ),
      ),
    );

    final hasMustCallSuper = CachingPipeline(
      cacheMgr: const PipelineNoopCacheMgr(),
    ).reduceFromTerm(
      HasInheritedMustCallSuperAnnotation(
        swidFunctionType: SwidFunctionType(
          name: "debugFillProperties",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "package:flutter/src/widgets/framework.dart",
          namedParameterTypes: {},
          namedDefaults: {},
          normalParameterNames: [
            "properties",
          ],
          normalParameterTypes: [
            SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "DiagnosticPropertiesBuilder",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath:
                    "package:flutter/src/widgets/foundation/diagnostics.dart",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            )
          ],
          optionalParameterNames: [],
          optionalParameterTypes: [],
          returnType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "void",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "",
              typeArguments: [],
              referenceDeclarationKind: SwidReferenceDeclarationKind.voidType,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          isFactory: false,
          typeFormals: [],
          declarationModifiers: SwidDeclarationModifiers.empty(),
        ),
        swidClass: ir,
      ),
    );

    expect(hasMustCallSuper, isTrue);
  }, tags: "swid");
}
