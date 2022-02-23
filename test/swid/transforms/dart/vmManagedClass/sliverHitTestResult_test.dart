import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartVmManagedClassDeclaration.dart';
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
      name: "SliverHitTestResult",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/rendering/sliver.dart",
      constructorType: null,
      generativeConstructors: [],
      factoryConstructors: [],
      staticMethods: [],
      methods: [
        SwidFunctionType(
          name: "addWithAxisOffset",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "package:flutter/src/rendering/sliver.dart",
          namedParameterTypes: {
            "crossAxisOffset": SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "double",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:core",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty().clone(
                  isRequiredNamed: true,
                ),
              ),
            ),
            "crossAxisPosition": SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "double",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:core",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty().clone(
                  isRequiredNamed: true,
                ),
              ),
            ),
            "hitTest": SwidType.fromSwidFunctionType(
              swidFunctionType: SwidFunctionType(
                name: "",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath:
                    "package:flutter/src/rendering/sliver.dart",
                namedParameterTypes: {
                  "crossAxisPosition": SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      name: "double",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath: "dart:core",
                      typeArguments: [],
                      referenceDeclarationKind:
                          SwidReferenceDeclarationKind.classElement,
                      declarationModifiers:
                          SwidDeclarationModifiers.empty().clone(
                        isRequiredNamed: true,
                      ),
                    ),
                  ),
                  "mainAxisPosition": SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      name: "double",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath: "dart:core",
                      typeArguments: [],
                      referenceDeclarationKind:
                          SwidReferenceDeclarationKind.classElement,
                      declarationModifiers:
                          SwidDeclarationModifiers.empty().clone(
                        isRequiredNamed: true,
                      ),
                    ),
                  )
                },
                namedDefaults: {},
                normalParameterNames: [
                  "result",
                ],
                normalParameterTypes: [
                  SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      name: "SliverHitTestResult",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath:
                          "package:flutter/src/rendering/sliver.dart",
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
            "mainAxisOffset": SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "double",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:core",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty().clone(
                  isRequiredNamed: true,
                ),
              ),
            ),
            "mainAxisPosition": SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "double",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:core",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty().clone(
                  isRequiredNamed: true,
                ),
              ),
            ),
            "paintOffset": SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "Offset",
                nullabilitySuffix: SwidNullabilitySuffix.question,
                originalPackagePath: "dart:ui",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            ),
          },
          namedDefaults: {},
          normalParameterNames: [],
          normalParameterTypes: [],
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

    final res = CachingPipeline(
      cacheMgr: const PipelineNoopCacheMgr(),
    ).reduceFromTerm(
      DartVMManagedClassDeclaration(
        format: true,
        swidClass: ir,
      ),
    );

    expect(res, """
class VMManagedSliverHitTestResult
    extends _36c2.VMManagedBox<_021d.SliverHitTestResult> {
  VMManagedSliverHitTestResult(
      {required this.table, required this.vmObject, required this.hydroState})
      : super(
          table: table,
          vmObject: vmObject,
          hydroState: hydroState,
        ) {
    table[\'addWithAxisOffset\'] = _36c2.makeLuaDartFunc(
        func: (_fac9.List<_fac9.dynamic> luaCallerArguments) {
      _36c2.Closure unpackedhitTest = luaCallerArguments.length >= 2
          ? luaCallerArguments[1][\'hitTest\']
          : null;

      return [
        vmObject.addWithAxisOffset(
            crossAxisOffset: luaCallerArguments.length >= 2
                ? luaCallerArguments[1][\'crossAxisOffset\']
                : null?.toDouble(),
            crossAxisPosition: luaCallerArguments.length >= 2
                ? luaCallerArguments[1][\'crossAxisPosition\']
                : null?.toDouble(),
            hitTest: (result,
                    {required crossAxisPosition, required mainAxisPosition}) =>
                unpackedhitTest.dispatch(
                  [
                    luaCallerArguments[0],
                    result,
                    _36c2.HydroTable.fromMap({
                      "crossAxisPosition": crossAxisPosition,
                      "mainAxisPosition": mainAxisPosition
                    }),
                  ],
                  parentState: hydroState,
                )[0],
            mainAxisOffset: luaCallerArguments.length >= 2
                ? luaCallerArguments[1][\'mainAxisOffset\']
                : null?.toDouble(),
            mainAxisPosition: luaCallerArguments.length >= 2
                ? luaCallerArguments[1][\'mainAxisPosition\']
                : null?.toDouble(),
            paintOffset:
                _36c2.maybeUnBoxAndBuildArgument<_a643.Offset?, _fac9.dynamic>(
                    luaCallerArguments.length >= 2
                        ? luaCallerArguments[1][\'paintOffset\']
                        : null,
                    parentState: hydroState)),
      ];
    });
  }

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  final _021d.SliverHitTestResult vmObject;
}
""");
  }, tags: "swid");
}
