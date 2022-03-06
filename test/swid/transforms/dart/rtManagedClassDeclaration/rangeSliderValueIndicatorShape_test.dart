import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartRtManagedClassDeclaration.dart';
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
      name: "RangeSliderValueIndicatorShape",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/material/slider_theme.dart",
      constructorType: null,
      generativeConstructors: [],
      factoryConstructors: [],
      staticMethods: [],
      methods: [
        SwidFunctionType(
          name: "paint",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "package:flutter/src/material/slider_theme.dart",
          namedParameterTypes: {
            "isDiscrete": SwidType.fromSwidInterface(
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
            "isOnTop": SwidType.fromSwidInterface(
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
            "sizeWithOverflow": SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "Size",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:ui",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            ),
            "textDirection": SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "TextDirection",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:ui",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            ),
            "textScaleFactor": SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "double",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:core",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            ),
            "thumb": SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "Thumb",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath:
                    "package:flutter/src/material/slider_theme.dart",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            ),
            "value": SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "double",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:core",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            ),
            "activationAnimation": SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "Animation<double>",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath:
                    "package:flutter/src/animation/animation.dart",
                typeArguments: [
                  SwidTypeArgumentType(
                    type: SwidType.fromSwidInterface(
                      swidInterface: SwidInterface(
                        name: "double",
                        nullabilitySuffix: SwidNullabilitySuffix.none,
                        originalPackagePath: "dart:core",
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
                declarationModifiers: SwidDeclarationModifiers.empty().clone(
                  isRequiredNamed: true,
                ),
              ),
            ),
            "enableAnimation": SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "Animation<double>",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath:
                    "package:flutter/src/animation/animation.dart",
                typeArguments: [
                  SwidTypeArgumentType(
                    type: SwidType.fromSwidInterface(
                      swidInterface: SwidInterface(
                        name: "double",
                        nullabilitySuffix: SwidNullabilitySuffix.none,
                        originalPackagePath: "dart:core",
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
                declarationModifiers: SwidDeclarationModifiers.empty().clone(
                  isRequiredNamed: true,
                ),
              ),
            ),
            "labelPainter": SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "TextPainter",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath:
                    "package:flutter/src/painting/text_painter.dart",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            ),
            "parentBox": SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "RenderBox",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "package:flutter/src/rendering/box.dart",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty().clone(
                  isRequiredNamed: true,
                ),
              ),
            ),
            "sliderTheme": SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "SliderThemeData",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath:
                    "package:flutter/src/material/slider_theme.dart",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty().clone(
                  isRequiredNamed: true,
                ),
              ),
            )
          },
          namedDefaults: {},
          normalParameterNames: [
            "context",
            "center",
          ],
          normalParameterTypes: [
            SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "PaintingContext",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath:
                    "package:flutter/src/rendering/object.dart",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.classElement,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            ),
            SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "Offset",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:ui",
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
      isMixin: false,
      typeFormals: [],
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
class RTManagedRangeSliderValueIndicatorShape
    extends _4581.RangeSliderValueIndicatorShape
    implements _36c2.Box<_4581.RangeSliderValueIndicatorShape> {
  RTManagedRangeSliderValueIndicatorShape();

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _4581.RangeSliderValueIndicatorShape unwrap() => this;
  _4581.RangeSliderValueIndicatorShape get vmObject => this;
  @_fac9.override
  void paint(context, center,
      {_fac9.bool? isDiscrete,
      _fac9.bool? isOnTop,
      _a643.Size? sizeWithOverflow,
      _a643.TextDirection? textDirection,
      _fac9.double? textScaleFactor,
      _4581.Thumb? thumb,
      _fac9.double? value,
      required _86ca.Animation activationAnimation,
      required _86ca.Animation enableAnimation,
      _fe5a.TextPainter? labelPainter,
      required _be2e.RenderBox parentBox,
      required _4581.SliderThemeData sliderTheme}) {
    _36c2.Closure closure = table["paint"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}
""");
  }, tags: "swid");
}
