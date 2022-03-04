import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartVmManagedClassDeclaration.dart';
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
      name: "TickerFuture",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/scheduleer/ticker.dart",
      constructorType: null,
      generativeConstructors: [],
      factoryConstructors: [],
      staticMethods: [],
      methods: [
        SwidFunctionType(
          name: "then",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "package:flutter/src/scheduler/ticket.dart",
          namedParameterTypes: {
            "onError": SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "Function",
                nullabilitySuffix: SwidNullabilitySuffix.question,
                originalPackagePath: "dart:core",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            )
          },
          namedDefaults: {},
          normalParameterNames: [
            "onValue",
          ],
          normalParameterTypes: [
            SwidType.fromSwidFunctionType(
              swidFunctionType: SwidFunctionType(
                name: "",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "",
                namedParameterTypes: {},
                namedDefaults: {},
                normalParameterNames: [
                  "value",
                ],
                normalParameterTypes: [
                  SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      name: "void",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath: "",
                      typeArguments: [],
                      referenceDeclarationKind:
                          SwidReferenceDeclarationKind.voidType,
                      declarationModifiers: SwidDeclarationModifiers.empty(),
                    ),
                  )
                ],
                optionalParameterNames: [],
                optionalParameterTypes: [],
                returnType: SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    name: "FutureOr<R>",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath: "dart:async",
                    typeArguments: [
                      SwidTypeArgumentType(
                        type: SwidType.fromSwidInterface(
                          swidInterface: SwidInterface(
                            name: "R",
                            nullabilitySuffix: SwidNullabilitySuffix.none,
                            originalPackagePath:
                                "package:flutter/src/scheduler/ticker.dart",
                            typeArguments: [],
                            referenceDeclarationKind:
                                SwidReferenceDeclarationKind.typeParameterType,
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
                isFactory: false,
                typeFormals: [],
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            )
          ],
          optionalParameterNames: [],
          optionalParameterTypes: [],
          returnType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "Future<R>",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:async",
              typeArguments: [
                SwidTypeArgumentType(
                  type: SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      name: "R",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath:
                          "package:flutter/src/scheduler/ticker.dart",
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
          isFactory: false,
          typeFormals: [
            SwidTypeFormal(
              value: SwidTypeFormalValue.fromString(
                string: "R",
              ),
              swidReferenceDeclarationKind:
                  SwidReferenceDeclarationKind.typeParameterType,
              swidTypeFormalBound: null,
            )
          ],
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
    );

    final pipeline = CachingPipeline(
      cacheMgr: const PipelineNoopCacheMgr(),
    );

    final res = pipeline.reduceFromTerm(
      DartVMManagedClassDeclaration(
        swidClass: ir,
        format: true,
      ),
    );

    expect(res, """
class VMManagedTickerFuture extends _36c2.VMManagedBox<_6826.TickerFuture> {
  VMManagedTickerFuture(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table[\'then\'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedonValue = luaCallerArguments[1];
      return [
        _36c2.maybeBoxObject<_7de1.Future>(
            object: vmObject.then(
                (value) => _36c2.maybeUnBoxAndBuildArgument<
                        _7de1.FutureOr<_fac9.dynamic>, _fac9.dynamic>(
                    unpackedonValue.dispatch(
                      [
                        luaCallerArguments[0],
                      ],
                      parentState: hydroState,
                    )[0],
                    parentState: hydroState),
                onError: _36c2
                    .maybeUnBoxAndBuildArgument<_fac9.Function?, _fac9.dynamic>(
                        luaCallerArguments.length >= 3
                            ? luaCallerArguments[2][\'onError\']
                            : null,
                        parentState: hydroState)),
            hydroState: hydroState,
            table: _36c2.HydroTable()),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _6826.TickerFuture vmObject;
}
""");
  }, tags: "swid");
}
