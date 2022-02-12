import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/ts/tsFunctionDefaultNamedProps.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstListLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentType.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final ir = SwidClass(
      name: "MultiChildRenderObjectWidget",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/widgets/framework.dart",
      constructorType: SwidFunctionType(
        name: "MultiChildRenderObjectWidget",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        originalPackagePath: "",
        namedParameterTypes: {
          "children": SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "List<Widget>",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:core",
              typeArguments: [
                SwidTypeArgumentType(
                  type: SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      name: "Widget",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath:
                          "package:flutter/src/widgets/framework.dart",
                      typeArguments: [],
                      referenceDeclarationKind:
                          SwidReferenceDeclarationKind.classElement,
                      declarationModifiers: SwidDeclarationModifiers.empty(),
                    ),
                  ),
                  element: null,
                )
              ],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          "key": SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "Key",
              nullabilitySuffix: SwidNullabilitySuffix.question,
              originalPackagePath: "package:flutter/src/foundation/key.dart",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          )
        },
        namedDefaults: {
          "children": SwidDefaultFormalParameter(
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "package:flutter/src/widgets/framework.dart",
            staticType: SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "List<Widget>",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:core",
                typeArguments: [
                  SwidTypeArgumentType(
                    type: SwidType.fromSwidInterface(
                      swidInterface: SwidInterface(
                        name: "Widget",
                        nullabilitySuffix: SwidNullabilitySuffix.none,
                        originalPackagePath:
                            "package:flutter/src/widgets/framework.dart",
                        typeArguments: [],
                        referenceDeclarationKind:
                            SwidReferenceDeclarationKind.classElement,
                        declarationModifiers: SwidDeclarationModifiers.empty(),
                      ),
                    ),
                    element: null,
                  )
                ],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            ),
            value: SwidStaticConst.fromSwidStaticConstListLiteral(
              staticConstListLiteral: SwidStaticConstListLiteral(
                elements: [],
                staticType: SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    name: "List<Widget>",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath: "dart:core",
                    typeArguments: [
                      SwidTypeArgumentType(
                        type: SwidType.fromSwidInterface(
                          swidInterface: SwidInterface(
                            name: "Widget",
                            nullabilitySuffix: SwidNullabilitySuffix.none,
                            originalPackagePath:
                                "package:flutter/src/widgets/framework.dart",
                            typeArguments: [],
                            referenceDeclarationKind:
                                SwidReferenceDeclarationKind.classElement,
                            declarationModifiers:
                                SwidDeclarationModifiers.empty(),
                          ),
                        ),
                        element: null,
                      )
                    ],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.classElement,
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                  ),
                ),
              ),
            ),
            defaultValueCode: "const <Widget>[]",
          )
        },
        normalParameterNames: [],
        normalParameterTypes: [],
        optionalParameterNames: [],
        optionalParameterTypes: [],
        returnType: SwidType.fromSwidInterface(
          swidInterface: SwidInterface(
            name: "MultiChildRenderObjectWidget",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "package:flutter/src/widgets/framework.dart",
            typeArguments: [],
            referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
            declarationModifiers: SwidDeclarationModifiers.empty(),
          ),
        ),
        isFactory: false,
        typeFormals: [],
        declarationModifiers: SwidDeclarationModifiers.empty(),
      ),
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
    );

    final pipeline = CachingPipeline(
      cacheMgr: const PipelineNoopCacheMgr(),
    );

    final res = pipeline.reduceFromTerm(
      TsFunctionDefaultNamedProps(
        swidFunctionType: ir.constructorType!,
      ),
    );

    expect(res, """
const multiChildRenderObjectWidgetDefaultProps = {
    children: List.fromArray<IWidget>([]),
};
""");
  }, tags: "swid");
}
