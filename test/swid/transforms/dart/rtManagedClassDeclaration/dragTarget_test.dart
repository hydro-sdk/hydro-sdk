import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartRtManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/swidElement.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldReference.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstPrefixedIdentifier.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentElement.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalBound.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final ir = SwidClass(
      name: "DragTarget",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/widgets/drag_target.dart",
      constructorType: SwidFunctionType(
        name: "",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        originalPackagePath: "",
        namedParameterTypes: {
          "hitTestBehavior": SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "HitTestBehavior",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath:
                  "package:flutter/src/rendering/proxy_box.dart",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.enumElement,
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
          ),
          "onAccept": SwidType.fromSwidFunctionType(
            swidFunctionType: SwidFunctionType(
              name: "",
              nullabilitySuffix: SwidNullabilitySuffix.question,
              originalPackagePath:
                  "package:flutter/src/widgets/drag_target.dart",
              namedParameterTypes: {},
              namedDefaults: {},
              normalParameterNames: [
                "data",
              ],
              normalParameterTypes: [
                SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    name: "T",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath:
                        "package:flutter/src/widgets/drag_target.dart",
                    typeArguments: [],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.typeParameterType,
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
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          "onAcceptWithDetails": SwidType.fromSwidFunctionType(
            swidFunctionType: SwidFunctionType(
              name: "",
              nullabilitySuffix: SwidNullabilitySuffix.question,
              originalPackagePath:
                  "package:flutter/src/widgets/drag_target.dart",
              namedParameterTypes: {},
              namedDefaults: {},
              normalParameterNames: [
                "details",
              ],
              normalParameterTypes: [
                SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    name: "DragTargetDetails<T>",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath:
                        "package:flutter/src/widgets/drag_target.dart",
                    typeArguments: [
                      SwidTypeArgumentType(
                        type: SwidType.fromSwidInterface(
                          swidInterface: SwidInterface(
                            name: "T",
                            nullabilitySuffix: SwidNullabilitySuffix.none,
                            originalPackagePath:
                                "package:flutter/src/widgets/drag_target.dart",
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
                                name: "Object",
                                nullabilitySuffix: SwidNullabilitySuffix.none,
                                originalPackagePath: "dart:core",
                                typeArguments: [],
                                referenceDeclarationKind:
                                    SwidReferenceDeclarationKind.classElement,
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
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          "onLeave": SwidType.fromSwidFunctionType(
            swidFunctionType: SwidFunctionType(
              name: "",
              nullabilitySuffix: SwidNullabilitySuffix.question,
              originalPackagePath:
                  "package:flutter/src/widgets/drag_target.dart",
              namedParameterTypes: {},
              namedDefaults: {},
              normalParameterNames: [
                "data",
              ],
              normalParameterTypes: [
                SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    name: "T",
                    nullabilitySuffix: SwidNullabilitySuffix.question,
                    originalPackagePath:
                        "package:flutter/src/widgets/drag_target.dart",
                    typeArguments: [],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.typeParameterType,
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
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          "onMove": SwidType.fromSwidFunctionType(
            swidFunctionType: SwidFunctionType(
              name: "",
              nullabilitySuffix: SwidNullabilitySuffix.question,
              originalPackagePath:
                  "package:flutter/src/widgets/drag_target.dart",
              namedParameterTypes: {},
              namedDefaults: {},
              normalParameterNames: [
                "details",
              ],
              normalParameterTypes: [
                SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    name: "DragTargetDetails<T>",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath:
                        "package:flutter/src/widgets/drag_target.dart",
                    typeArguments: [
                      SwidTypeArgumentType(
                        type: SwidType.fromSwidInterface(
                          swidInterface: SwidInterface(
                            name: "T",
                            nullabilitySuffix: SwidNullabilitySuffix.none,
                            originalPackagePath:
                                "package:flutter/src/widgets/drag_target.dart",
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
                                name: "Object",
                                nullabilitySuffix: SwidNullabilitySuffix.none,
                                originalPackagePath: "dart:core",
                                typeArguments: [],
                                referenceDeclarationKind:
                                    SwidReferenceDeclarationKind.classElement,
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
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          "onWillAccept": SwidType.fromSwidFunctionType(
            swidFunctionType: SwidFunctionType(
              name: "",
              nullabilitySuffix: SwidNullabilitySuffix.question,
              originalPackagePath:
                  "package:flutter/src/widgets/drag_target.dart",
              namedParameterTypes: {},
              namedDefaults: {},
              normalParameterNames: [
                "data",
              ],
              normalParameterTypes: [
                SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    name: "T",
                    nullabilitySuffix: SwidNullabilitySuffix.question,
                    originalPackagePath:
                        "package:flutter/src/widgets/drag_target.dart",
                    typeArguments: [],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.typeParameterType,
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                  ),
                )
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
                  declarationModifiers: SwidDeclarationModifiers.empty(),
                ),
              ),
              isFactory: false,
              typeFormals: [],
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
          "builder": SwidType.fromSwidFunctionType(
            swidFunctionType: SwidFunctionType(
              name: "",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath:
                  "package:flutter/src/widgets/drag_target.dart",
              namedParameterTypes: {},
              namedDefaults: {},
              normalParameterNames: [
                "context",
                "candidateData",
                "rejectedData",
              ],
              normalParameterTypes: [
                SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    name: "BuildContext",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath:
                        "package:flutter/src/widgets/framework.dart",
                    typeArguments: [],
                    referenceDeclarationKind:
                        SwidReferenceDeclarationKind.classElement,
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                  ),
                ),
                SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    name: "List<T>",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath: "dart:core",
                    typeArguments: [
                      SwidTypeArgumentType(
                        type: SwidType.fromSwidInterface(
                          swidInterface: SwidInterface(
                            name: "T",
                            nullabilitySuffix: SwidNullabilitySuffix.question,
                            originalPackagePath:
                                "package:flutter/src/widgets/drag_target.dart",
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
                                name: "Object",
                                nullabilitySuffix: SwidNullabilitySuffix.none,
                                originalPackagePath: "dart:core",
                                typeArguments: [],
                                referenceDeclarationKind:
                                    SwidReferenceDeclarationKind.classElement,
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
                SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    name: "List<dynamic>",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath: "dart:core",
                    typeArguments: [
                      SwidTypeArgumentType(
                        type: SwidType.fromSwidInterface(
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
              isFactory: false,
              typeFormals: [],
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          )
        },
        namedDefaults: {
          "hitTestBehavior": SwidDefaultFormalParameter(
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "package:flutter/src/widgets/drag_target.dart",
            staticType: SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "HitTestBehavior",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath:
                    "package:flutter/src/rendering/proxy_box.dart",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.enumElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            ),
            value: SwidStaticConst.fromSwidStaticConstPrefixedIdentifier(
              staticConstPrefixedIdentifier: SwidStaticConstPrefixedIdentifier(
                prefix: SwidInterface(
                  name: "HitTestBehavior",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath:
                      "package:flutter/src/rendering/proxy_box.dart",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.enumElement,
                  declarationModifiers: SwidDeclarationModifiers.empty(),
                ),
                staticConstFieldReference: SwidStaticConstFieldReference(
                  name: "translucent",
                ),
              ),
            ),
            defaultValueCode: "HitTestBehavior.translucent",
          )
        },
        normalParameterNames: [],
        normalParameterTypes: [],
        optionalParameterNames: [],
        optionalParameterTypes: [],
        returnType: SwidType.fromSwidInterface(
          swidInterface: SwidInterface(
            name: "DragTarget<T>",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "package:flutter/src/widgets/drag_target.dart",
            typeArguments: [
              SwidTypeArgumentType(
                type: SwidType.fromSwidInterface(
                  swidInterface: SwidInterface(
                    name: "T",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath:
                        "package:flutter/src/widgets/drag_target.dart",
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
                        name: "Object",
                        nullabilitySuffix: SwidNullabilitySuffix.none,
                        originalPackagePath: "dart:core",
                        typeArguments: [],
                        referenceDeclarationKind:
                            SwidReferenceDeclarationKind.classElement,
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
          swidTypeFormalBound: SwidTypeFormalBound.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "Object",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:core",
              typeArguments: [],
              referenceDeclarationKind:
                  SwidReferenceDeclarationKind.classElement,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
          ),
        )
      ],
    );

    final pipeline = CachingPipeline(
      cacheMgr: const PipelineNoopCacheMgr(),
    );

    final res = pipeline.reduceFromTerm(
      DartRTManagedClassDeclaration(
        swidClass: ir,
        format: true,
      ),
    );

    expect(res, """
class RTManagedDragTarget extends _0705.DragTarget
    implements _36c2.Box<_0705.DragTarget> {
  RTManagedDragTarget(
      {required _bf98.HitTestBehavior hitTestBehavior,
      _ab4a.Key? key,
      void Function(_fac9.dynamic data)? onAccept,
      void Function(_0705.DragTargetDetails<_fac9.Object> details)?
          onAcceptWithDetails,
      void Function(_fac9.dynamic? data)? onLeave,
      void Function(_0705.DragTargetDetails<_fac9.Object> details)? onMove,
      _fac9.bool Function(_fac9.dynamic? data)? onWillAccept,
      required _e2dc.Widget Function(
              _e2dc.BuildContext context,
              _fac9.List<_fac9.Object?> candidateData,
              _fac9.List<_fac9.dynamic> rejectedData)
          builder,
      required this.table,
      required this.hydroState})
      : super(
            hitTestBehavior: hitTestBehavior,
            key: key,
            onAccept: onAccept,
            onAcceptWithDetails: onAcceptWithDetails,
            onLeave: onLeave,
            onMove: onMove,
            onWillAccept: onWillAccept,
            builder: builder) {
    table[\'vmObject\'] = vmObject;
    table[\'unwrap\'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      return [unwrap()];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _0705.DragTarget unwrap() => this;
  _0705.DragTarget get vmObject => this;
}
""");
  }, tags: "swid");
}
