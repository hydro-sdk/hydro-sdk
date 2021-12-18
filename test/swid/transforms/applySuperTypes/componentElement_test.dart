import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldReference.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstPrefixedIdentifier.dart';
import 'package:hydro_sdk/swid/ir/swidStringLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/transforms/applySuperTypes.dart';
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
        methods: [],
        staticConstFieldDeclarations: [],
        instanceFieldDeclarations: {},
        declarationModifiers: SwidDeclarationModifiers.empty(),
        mixedInClasses: [],
        implementedClasses: [
          SwidClass(
            name: "BuildContext",
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
          )
        ],
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
          methods: [
            SwidFunctionType(
              name: "toStringShallow",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath:
                  "package:flutter/src/foundation/diagnostics.dart",
              namedParameterTypes: {
                "joiner": SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    name: "String",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath: "dart:core",
                    typeArguments: [],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.classElement,
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                  ),
                ),
                "minLevel": SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    name: "DiagnosticLevel",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath:
                        "package:flutter/src/foundation/diagnostics.dart",
                    typeArguments: [],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.enumElement,
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                  ),
                )
              },
              namedDefaults: {
                "joiner": SwidDefaultFormalParameter(
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath:
                      "package:flutter/src/foundation/diagnostics.dart",
                  staticType: SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      name: "String",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath: "dart:core",
                      typeArguments: [],
                      referenceDeclarationKind:
                          SwidReferenceDeclarationKind.classElement,
                      declarationModifiers: SwidDeclarationModifiers.empty(),
                    ),
                  ),
                  value: SwidStaticConst.fromSwidStringLiteral(
                    swidStringLiteral: SwidStringLiteral(
                      value: ", ",
                    ),
                  ),
                  defaultValueCode: "', '",
                ),
                "minLevel": SwidDefaultFormalParameter(
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath:
                      "package:flutter/src/foundation/diagnostics.dart",
                  staticType: SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      name: "DiagnosticLevel",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath:
                          "package:flutter/src/foundation/diagnostics.dart",
                      typeArguments: [],
                      referenceDeclarationKind:
                          SwidReferenceDeclarationKind.enumElement,
                      declarationModifiers: SwidDeclarationModifiers.empty(),
                    ),
                  ),
                  value: SwidStaticConst.fromSwidStaticConstPrefixedIdentifier(
                    staticConstPrefixedIdentifier:
                        SwidStaticConstPrefixedIdentifier(
                      prefix: SwidInterface(
                        name: "DiagnosticLevel",
                        nullabilitySuffix: SwidNullabilitySuffix.none,
                        originalPackagePath:
                            "package:flutter/src/foundation/diagnostics.dart",
                        typeArguments: [],
                        referenceDeclarationKind:
                            SwidReferenceDeclarationKind.classElement,
                        declarationModifiers: SwidDeclarationModifiers.empty(),
                      ),
                      staticConstFieldReference: SwidStaticConstFieldReference(
                        name: "debug",
                      ),
                    ),
                  ),
                  defaultValueCode: "DiagnosticLevel.debug",
                ),
              },
              normalParameterNames: [],
              normalParameterTypes: [],
              optionalParameterNames: [],
              optionalParameterTypes: [],
              returnType: SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  name: "String",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "dart:core",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.classElement,
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
        ),
      ),
    );

    final merged = CachingPipeline(
      cacheMgr: const PipelineNoopCacheMgr(),
    ).reduceFromTerm(
      ApplySuperTypes(
        swidClass: ir,
      ),
    );

    expect(
      merged.methods.firstWhereOrNull(
        (x) => x.name == "toStringShallow",
      ),
      isNotNull,
    );
  }, tags: "swid");
}
