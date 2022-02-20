import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartRtManagedClassDeclaration.dart';
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
      DartRTManagedClassDeclaration(
        swidClass: ir,
      ),
    );

    expect(res, """
class RTManagedSliverHitTestResult extends _021d.SliverHitTestResult
    implements _36c2.Box<_021d.SliverHitTestResult> {
  RTManagedSliverHitTestResult();

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _021d.SliverHitTestResult unwrap() => this;
  _021d.SliverHitTestResult get vmObject => this;
  @_fac9.override
  _fac9.bool addWithAxisOffset(
      {required _fac9.double crossAxisOffset,
      required _fac9.double crossAxisPosition,
      required _fac9.bool Function(_021d.SliverHitTestResult result,
              {required _fac9.double crossAxisPosition,
              required _fac9.double mainAxisPosition})
          hitTest,
      required _fac9.double mainAxisOffset,
      required _fac9.double mainAxisPosition,
      _a643.Offset? paintOffset}) {
    _36c2.Closure closure = table["addWithAxisOffset"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}
""");
  }, tags: "swid");
}
