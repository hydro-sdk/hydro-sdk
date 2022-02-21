import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartLoadNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidElement.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentElement.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final ir = SwidClass(
      name: "TweenSequence",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/animation/tween_sequence.dart",
      constructorType: SwidFunctionType(
        name: "",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        originalPackagePath: "",
        namedParameterTypes: {},
        namedDefaults: {},
        normalParameterNames: [
          "items",
        ],
        normalParameterTypes: [
          SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "List<TweenSequenceItem<T>>",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:core",
              typeArguments: [
                SwidTypeArgumentType(
                  type: SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      name: "TweenSequenceItem<T>",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath:
                          "package:flutter/src/animation/tween_sequence.dart",
                      typeArguments: [
                        SwidTypeArgumentType(
                          type: SwidType.fromSwidInterface(
                            swidInterface: SwidInterface(
                              name: "T",
                              nullabilitySuffix: SwidNullabilitySuffix.none,
                              originalPackagePath:
                                  "package:flutter/src/animation/tween_sequence.dart",
                              typeArguments: [],
                              referenceDeclarationKind:
                                  SwidReferenceDeclarationKind
                                      .typeParameterType,
                              declarationModifiers:
                                  SwidDeclarationModifiers.empty(),
                            ),
                          ),
                          element: SwidElement.fromSwidTypeArgumentElement(
                            swidTypeArgumentElement: SwidTypeArgumentElement(
                              bound: SwidType.fromSwidInterface(
                                swidInterface: SwidInterface(
                                  name: "dynamic",
                                  nullabilitySuffix: SwidNullabilitySuffix.none,
                                  originalPackagePath: "dart:core",
                                  typeArguments: [],
                                  referenceDeclarationKind:
                                      SwidReferenceDeclarationKind.dynamicType,
                                  declarationModifiers:
                                      SwidDeclarationModifiers.empty(),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
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
          )
        ],
        optionalParameterNames: [],
        optionalParameterTypes: [],
        returnType: SwidType.fromSwidInterface(
          swidInterface: SwidInterface(
            name: "TweenSequenceItem<T>",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath:
                "package:flutter/src/animation/tween_sequence.dart",
            typeArguments: [
              SwidTypeArgumentType(
                type: SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    name: "T",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath:
                        "package:flutter/src/animation/tween_sequence.dart",
                    typeArguments: [],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.typeParameterType,
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                  ),
                ),
                element: SwidElement.fromSwidTypeArgumentElement(
                  swidTypeArgumentElement: SwidTypeArgumentElement(
                    bound: SwidType.fromSwidInterface(
                      swidInterface: SwidInterface(
                        name: "dynamic",
                        nullabilitySuffix: SwidNullabilitySuffix.none,
                        originalPackagePath: "dart:core",
                        typeArguments: [],
                        referenceDeclarationKind:
                            SwidReferenceDeclarationKind.dynamicType,
                        declarationModifiers: SwidDeclarationModifiers.empty(),
                      ),
                    ),
                  ),
                ),
              )
            ],
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
      typeFormals: [
        SwidTypeFormal(
          value: SwidTypeFormalValue.fromString(
            string: "T",
          ),
          swidReferenceDeclarationKind:
              SwidReferenceDeclarationKind.typeParameterType,
          swidTypeFormalBound: null,
        )
      ],
    );

    final pipeline = CachingPipeline(
      cacheMgr: const PipelineNoopCacheMgr(),
    );

    final res = pipeline.reduceFromTerm(
      DartLoadNamespaceSymbolDeclaration(
        swidClass: ir,
      ),
    );

    expect(res, """
void loadTweenSequence(
    {required _36c2.HydroState hydroState, required _36c2.HydroTable table}) {
  table[\'tweenSequence\'] = _36c2.makeLuaDartFunc(
      func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
    return [
      RTManagedTweenSequence(
          _36c2.maybeUnBoxAndBuildArgument<
                  _fac9.List<_fb3c.TweenSequenceItem<_fac9.dynamic>>,
                  _fb3c.TweenSequenceItem<_fac9.dynamic>>(luaCallerArguments[1],
              parentState: hydroState),
          table: luaCallerArguments[0],
          hydroState: hydroState)
    ];
  });
  _36c2.registerBoxer<_fb3c.TweenSequence>(boxer: (
      {required _fb3c.TweenSequence vmObject,
      required _36c2.HydroState hydroState,
      required _36c2.HydroTable table}) {
    return VMManagedTweenSequence(
        vmObject: vmObject, hydroState: hydroState, table: table);
  });
}
""");
  }, tags: "swid");
}
