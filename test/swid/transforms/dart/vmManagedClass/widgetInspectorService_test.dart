import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartVmManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentType.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final ir = SwidClass(
      name: "WidgetInspectorService",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/widgets/widget_inspector.dart",
      constructorType: null,
      generativeConstructors: [],
      factoryConstructors: [],
      staticMethods: [],
      methods: [
        SwidFunctionType(
          name: "initServiceExtensions",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath:
              "package:flutter/src/widgets/widget_inspector.dart",
          namedParameterTypes: {},
          namedDefaults: {},
          normalParameterNames: [
            "registerServiceExtensionCallback",
          ],
          normalParameterTypes: [
            SwidType.fromSwidFunctionType(
              swidFunctionType: SwidFunctionType(
                name: "",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath:
                    "package:flutter/src/widgets/widget_inspector.dart",
                namedParameterTypes: {
                  "callback": SwidType.fromSwidFunctionType(
                    swidFunctionType: SwidFunctionType(
                      name: "",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath:
                          "package:flutter/src/foundation/binding.dart",
                      namedParameterTypes: {},
                      namedDefaults: {},
                      normalParameterNames: [
                        "parameters",
                      ],
                      normalParameterTypes: [
                        SwidType.fromSwidInterface(
                          swidInterface: SwidInterface(
                            name: "Map<String, String>",
                            nullabilitySuffix: SwidNullabilitySuffix.none,
                            originalPackagePath: "dart:core",
                            typeArguments: [
                              SwidTypeArgumentType(
                                type: SwidType.fromSwidInterface(
                                  swidInterface: SwidInterface(
                                    name: "String",
                                    nullabilitySuffix:
                                        SwidNullabilitySuffix.none,
                                    originalPackagePath: "dart:core",
                                    typeArguments: [],
                                    referenceDeclarationKind:
                                        SwidReferenceDeclarationKind
                                            .classElement,
                                    declarationModifiers:
                                        SwidDeclarationModifiers.empty(),
                                  ),
                                ),
                                element: null,
                              ),
                              SwidTypeArgumentType(
                                type: SwidType.fromSwidInterface(
                                  swidInterface: SwidInterface(
                                    name: "String",
                                    nullabilitySuffix:
                                        SwidNullabilitySuffix.none,
                                    originalPackagePath: "dart:core",
                                    typeArguments: [],
                                    referenceDeclarationKind:
                                        SwidReferenceDeclarationKind
                                            .classElement,
                                    declarationModifiers:
                                        SwidDeclarationModifiers.empty(),
                                  ),
                                ),
                                element: null,
                              )
                            ],
                            referenceDeclarationKind:
                                SwidReferenceDeclarationKind.classElement,
                            declarationModifiers:
                                SwidDeclarationModifiers.empty(),
                          ),
                        ),
                      ],
                      optionalParameterNames: [],
                      optionalParameterTypes: [],
                      returnType: SwidType.fromSwidInterface(
                        swidInterface: SwidInterface(
                          name: "Future<Map<String, dynamic>>",
                          nullabilitySuffix: SwidNullabilitySuffix.none,
                          originalPackagePath: "dart:async",
                          typeArguments: [
                            SwidTypeArgumentType(
                              type: SwidType.fromSwidInterface(
                                swidInterface: SwidInterface(
                                  name: "Map<String, dynamic>",
                                  nullabilitySuffix: SwidNullabilitySuffix.none,
                                  originalPackagePath: "dart:core",
                                  typeArguments: [
                                    SwidTypeArgumentType(
                                      type: SwidType.fromSwidInterface(
                                        swidInterface: SwidInterface(
                                          name: "String",
                                          nullabilitySuffix:
                                              SwidNullabilitySuffix.none,
                                          originalPackagePath: "dart:core",
                                          typeArguments: [],
                                          referenceDeclarationKind:
                                              SwidReferenceDeclarationKind
                                                  .classElement,
                                          declarationModifiers:
                                              SwidDeclarationModifiers.empty(),
                                        ),
                                      ),
                                      element: null,
                                    ),
                                    SwidTypeArgumentType(
                                      type: SwidType.fromSwidInterface(
                                        swidInterface: SwidInterface(
                                          name: "dynamic",
                                          nullabilitySuffix:
                                              SwidNullabilitySuffix.none,
                                          originalPackagePath: "dart:core",
                                          typeArguments: [],
                                          referenceDeclarationKind:
                                              SwidReferenceDeclarationKind
                                                  .dynamicType,
                                          declarationModifiers:
                                              SwidDeclarationModifiers.empty(),
                                        ),
                                      ),
                                      element: null,
                                    )
                                  ],
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
                          declarationModifiers:
                              SwidDeclarationModifiers.empty(),
                        ),
                      ),
                      isFactory: false,
                      typeFormals: [],
                      declarationModifiers: SwidDeclarationModifiers.empty(),
                    ),
                  ),
                  "name": SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      name: "String",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath: "dart:core",
                      typeArguments: [],
                      referenceDeclarationKind:
                          SwidReferenceDeclarationKind.classElement,
                      declarationModifiers: SwidDeclarationModifiers.empty(),
                    ),
                  )
                },
                namedDefaults: {},
                normalParameterNames: [],
                normalParameterTypes: [],
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
      isMixin: true,
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
class VMManagedWidgetInspectorService
    extends _36c2.VMManagedBox<_8c83.WidgetInspectorService> {
  VMManagedWidgetInspectorService(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table[\'initServiceExtensions\'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedregisterServiceExtensionCallback =
          luaCallerArguments[1];
      vmObject.initServiceExtensions(({callback, name}) =>
          unpackedregisterServiceExtensionCallback.dispatch(
            [
              luaCallerArguments[0],
              _36c2.HydroTable.fromMap({"callback": callback, "name": name}),
            ],
            parentState: hydroState,
          ));
      return [];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _8c83.WidgetInspectorService vmObject;
}
""");
  }, tags: "swid");
}
