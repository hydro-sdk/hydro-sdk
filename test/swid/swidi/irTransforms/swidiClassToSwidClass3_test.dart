import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/frontend/swidi/swidiSourceToSwidIr.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidIr.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final res = swidiSourceToSwidIr(
        pipeline: CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ),
        content: """
class "dart:core"::List {
  static "dart:core"::class::List<type::T> fromArray<T extends "dart:core"::class::Object?>([
    [[ ignoreTransform(@"referenceRewriting") ]]
    [[ ignoreAnalysis(@"referenceCollection")]]
    class::Array<type::T>? array,
  ]) -> {
    @"dartStaticMethodNamespaceSymbolDeclaration" : false,
    @"tsClassMethodDeclaration" : @"if(array!==undefined){return List.from<T>(array as any,{}) as List<T>;}return List.from<T>([] as any,{}) as List<T>}",
  };
}
      """);

    expect(res, isNotNull);

    final list = SwidClass(
      name: "List",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "dart:core",
      constructorType: null,
      generativeConstructors: [],
      factoryConstructors: [],
      staticMethods: [
        SwidFunctionType(
          name: "fromArray",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "",
          declarationModifiers: SwidDeclarationModifiers.clone(
            declarationModifiers: SwidDeclarationModifiers.empty(),
            overridenTransforms: [
              StringTuple(
                item1: "tsClassMethodDeclaration",
                item2:
                    "if(array!==undefined){return List.from<T>(array as any,{}) as List<T>;}return List.from<T>([] as any,{}) as List<T>}",
              ),
            ],
            ignoredTransforms: [
              "dartStaticMethodNamespaceSymbolDeclaration",
            ],
          ),
          namedParameterTypes: {},
          namedDefaults: {},
          normalParameterNames: [],
          normalParameterTypes: [],
          optionalParameterNames: ["array"],
          optionalParameterTypes: [
            SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                declarationModifiers: SwidDeclarationModifiers.clone(
                  declarationModifiers: SwidDeclarationModifiers.empty(),
                  ignoredAnalyses: [
                    "referenceCollection",
                  ],
                  ignoredTransforms: [
                    "referenceRewriting",
                  ],
                ),
                name: "Array?",
                nullabilitySuffix: SwidNullabilitySuffix.question,
                originalPackagePath: "",
                typeArguments: [
                  SwidTypeArgumentType(
                    type: SwidType.fromSwidInterface(
                      swidInterface: SwidInterface(
                        declarationModifiers: SwidDeclarationModifiers.empty(),
                        name: "T",
                        nullabilitySuffix: SwidNullabilitySuffix.none,
                        originalPackagePath: "",
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
            )
          ],
          returnType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              declarationModifiers: SwidDeclarationModifiers.empty(),
              name: "List",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:core",
              typeArguments: [
                SwidTypeArgumentType(
                  type: SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      declarationModifiers: SwidDeclarationModifiers.empty(),
                      name: "T",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath: "",
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
              value: SwidTypeFormalValue.fromSwidInterface(
                swidInterface: SwidInterface(
                  declarationModifiers: SwidDeclarationModifiers.empty(),
                  name: "T",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "",
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.typeParameterType,
                  typeArguments: [],
                ),
              ),
              swidReferenceDeclarationKind:
                  SwidReferenceDeclarationKind.typeParameterType,
            )
          ],
        ),
      ],
      methods: [],
      staticConstFieldDeclarations: [],
      instanceFieldDeclarations: {},
      declarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      implementedClasses: [],
      isMixin: false,
      typeFormals: [],
    );

    expect(
      res,
      [
        SwidIr.fromSwidClass(
          swidClass: list,
        ),
      ],
    );
  }, tags: "swid");
}
