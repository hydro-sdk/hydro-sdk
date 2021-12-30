import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartStaticMethodNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateAllGenericsAsDynamic.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var set = SwidClass(
      name: "Set",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "dart:core",
      constructorType: null,
      generativeConstructors: [],
      factoryConstructors: [],
      implementedClasses: [],
      instanceFieldDeclarations: {},
      methods: [],
      mixedInClasses: [],
      staticConstFieldDeclarations: [],
      declarationModifiers: SwidDeclarationModifiers.empty(),
      staticMethods: [],
      typeFormals: [],
      extendedClass: null,
      isMixin: false,
    );

    var castFrom = SwidFunctionType(
      name: "castFrom",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "dart:core",
      declarationModifiers: SwidDeclarationModifiers.empty(),
      namedParameterTypes: {
        "newSet": SwidType.fromSwidFunctionType(
          swidFunctionType: SwidFunctionType(
            name: "",
            nullabilitySuffix: SwidNullabilitySuffix.question,
            originalPackagePath: "",
            declarationModifiers: SwidDeclarationModifiers.empty(),
            namedParameterTypes: {},
            namedDefaults: {},
            normalParameterNames: [],
            normalParameterTypes: [],
            optionalParameterNames: [],
            optionalParameterTypes: [],
            returnType: SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                declarationModifiers: SwidDeclarationModifiers.empty(),
                name: "Set<R>",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:core",
                typeArguments: [
                  SwidTypeArgumentType(
                    type: SwidType.fromSwidInterface(
                      swidInterface: SwidInterface(
                        declarationModifiers: SwidDeclarationModifiers.empty(),
                        name: "R",
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
                value: SwidTypeFormalValue.fromString(
                  string: "R",
                ),
                swidReferenceDeclarationKind:
                    SwidReferenceDeclarationKind.typeParameterType,
              )
            ],
          ),
        )
      },
      namedDefaults: {},
      normalParameterNames: [
        "source",
      ],
      normalParameterTypes: [
        SwidType.fromSwidInterface(
          swidInterface: SwidInterface(
            declarationModifiers: SwidDeclarationModifiers.empty(),
            name: "Set<S>",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "dart:core",
            typeArguments: [
              SwidTypeArgumentType(
                type: SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                    name: "S",
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
            referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
          ),
        ),
      ],
      optionalParameterNames: [],
      optionalParameterTypes: [],
      returnType: SwidType.fromSwidInterface(
        swidInterface: SwidInterface(
          declarationModifiers: SwidDeclarationModifiers.empty(),
          name: "Set<T>",
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
            )
          ],
          referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
        ),
      ),
      isFactory: false,
      typeFormals: [
        SwidTypeFormal(
          swidTypeFormalBound: null,
          value: SwidTypeFormalValue.fromString(
            string: "S",
          ),
          swidReferenceDeclarationKind:
              SwidReferenceDeclarationKind.typeParameterType,
        ),
        SwidTypeFormal(
          swidTypeFormalBound: null,
          value: SwidTypeFormalValue.fromString(
            string: "T",
          ),
          swidReferenceDeclarationKind:
              SwidReferenceDeclarationKind.typeParameterType,
        ),
      ],
    );

    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          DartStaticMethodNamespaceSymbolDeclaration(
            swidClass: set,
            swidFunctionType: CachingPipeline(
              cacheMgr: const PipelineNoopCacheMgr(),
            )
                .reduceFromTerm(
                  InstantiateAllGenericsAsDynamic(
                    swidType: SwidType.fromSwidFunctionType(
                      swidFunctionType: castFrom,
                    ),
                  ),
                )
                .maybeWhen(
                  fromSwidFunctionType: (val) => val,
                  orElse: () => dartUnknownFunction,
                ),
          ),
        ),
        """
table  [
\'setCastFrom\'
] = makeLuaDartFunc(func: (List<dynamic> luaCallerArguments) { 
Closure? unpackednewSet=luaCallerArguments.length >= 3 ? luaCallerArguments  [
2
]  [
\'newSet\'
] : null;return [maybeBoxObject<Set>(object: Set.castFrom(maybeUnBoxAndBuildArgument<Set<dynamic>, dynamic>(luaCallerArguments  [
1
], parentState: hydroState), newSet: unpackednewSet != null ? <R>() => maybeUnBoxAndBuildArgument<Set<R>, R>(unpackednewSet.dispatch([luaCallerArguments[0],],parentState:hydroState,)[0], parentState: hydroState) : null ), hydroState: hydroState, table: HydroTable()),]; } );""");
  }, tags: "swid");
}
