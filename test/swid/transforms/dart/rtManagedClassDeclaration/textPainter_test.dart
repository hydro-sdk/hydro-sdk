import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartRtManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstPropertyAccess.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentType.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final ir = SwidClass(
      name: "TextPainter",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/painting/text_painter.dart",
      constructorType: null,
      generativeConstructors: [],
      factoryConstructors: [],
      staticMethods: [],
      methods: [
        SwidFunctionType(
          name: "getBoxesForSelection",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "package:flutter/src/painting/text_painter.dart",
          namedParameterTypes: {
            "boxHeightStyle": SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "BoxHeightStyle",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:ui",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            ),
            "boxWidthStyle": SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "BoxWidthStyle",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:ui",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            )
          },
          namedDefaults: {
            "boxHeightStyle": SwidDefaultFormalParameter(
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath:
                  "package:flutter/src/painting/text_painter.dart",
              staticType: SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  name: "BoxHeightStyle",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "dart:ui",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.classElement,
                  declarationModifiers: SwidDeclarationModifiers.empty(),
                ),
              ),
              value: SwidStaticConst.fromSwidStaticConstPropertyAccess(
                swidStaticConstPropertyAccess: SwidStaticConstPropertyAccess(
                  receiver: "BoxHeightStyle",
                  property: "tight",
                  staticType: SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      name: "BoxHeightStyle",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath: "dart:ui",
                      typeArguments: [],
                      referenceDeclarationKind:
                          SwidReferenceDeclarationKind.enumElement,
                      declarationModifiers: SwidDeclarationModifiers.empty(),
                    ),
                  ),
                ),
              ),
              defaultValueCode: "ui.BoxHeightStyle.tight",
            ),
            "boxWidthStyle": SwidDefaultFormalParameter(
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath:
                  "package:flutter/src/painting/text_painter.dart",
              staticType: SwidType.fromSwidInterface(
                swidInterface: SwidInterface(
                  name: "BoxWidthStyle",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "dart:ui",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.enumElement,
                  declarationModifiers: SwidDeclarationModifiers.empty(),
                ),
              ),
              value: SwidStaticConst.fromSwidStaticConstPropertyAccess(
                swidStaticConstPropertyAccess: SwidStaticConstPropertyAccess(
                  receiver: "BoxWidthStyle",
                  property: "tighth",
                  staticType: SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      name: "BoxWidthStyle",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath: "dart:ui",
                      typeArguments: [],
                      referenceDeclarationKind:
                          SwidReferenceDeclarationKind.enumElement,
                      declarationModifiers: SwidDeclarationModifiers.empty(),
                    ),
                  ),
                ),
              ),
              defaultValueCode: "ui.BoxWidthStyle.tight",
            )
          },
          normalParameterNames: [
            "selection",
          ],
          normalParameterTypes: [
            SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "TextSelection",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath:
                    "package:flutter/src/services/text_editing.dart",
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
              name: "List<TextBox>",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "dart:core",
              typeArguments: [
                SwidTypeArgumentType(
                  type: SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      name: "TextBox",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath: "dart:ui",
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

    final pipeline = CachingPipeline(
      cacheMgr: const PipelineNoopCacheMgr(),
    );

    final res = pipeline.reduceFromTerm(
      DartRTManagedClassDeclaration(
        swidClass: ir,
      ),
    );

    expect(res, """
class RTManagedTextPainter extends _fe5a.TextPainter
    implements _36c2.Box<_fe5a.TextPainter> {
  RTManagedTextPainter();

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _fe5a.TextPainter unwrap() => this;
  _fe5a.TextPainter get vmObject => this;
  @_fac9.override
  _fac9.List<_a643.TextBox> getBoxesForSelection(selection,
      {_a643.BoxHeightStyle boxHeightStyle = _a643.BoxHeightStyle.tight,
      _a643.BoxWidthStyle boxWidthStyle = _a643.BoxWidthStyle.tighth}) {
    _36c2.Closure closure = table["getBoxesForSelection"];
    return _36c2
        .maybeUnBoxAndBuildArgument<_fac9.List<_a643.TextBox>, _a643.TextBox>(
            closure.dispatch([table], parentState: hydroState)[0],
            parentState: hydroState);
  }
}
""");
  }, tags: "swid");
}
