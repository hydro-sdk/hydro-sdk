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
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldReference.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstPrefixedIdentifier.dart';
import 'package:hydro_sdk/swid/ir/swidStringLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/transforms/applySuperTypes.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final ir = SwidClass(
      name: "DragGestureRecognizer",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/gestures/monodrag.dart",
      constructorType: null,
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
      typeFormals: [],
      extendedClass: SwidClass(
        name: "OneSequenceGestureRecognizer",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        originalPackagePath: "package:flutter/src/gestures/recognizer.dart",
        constructorType: null,
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
        typeFormals: [],
        extendedClass: SwidClass(
          name: "GestureRecognizer",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "package:flutter/src/gestures/recognizer.dart",
          constructorType: null,
          generativeConstructors: [],
          factoryConstructors: [],
          staticMethods: [],
          methods: [],
          staticConstFieldDeclarations: [],
          instanceFieldDeclarations: {},
          declarationModifiers: SwidDeclarationModifiers.empty(),
          mixedInClasses: [
            SwidClass(
              name: "DiagnosticableTreeMixin",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath:
                  "package:flutter/src/foundations/diagnostics.dart",
              constructorType: null,
              generativeConstructors: [],
              factoryConstructors: [],
              staticMethods: [],
              methods: [
                SwidFunctionType(
                  name: "toStringDeep",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath:
                      "package:flutter/src/foundation/diagnostics.dart",
                  namedParameterTypes: {
                    "minLevel": SwidType.fromSwidInterface(
                      swidInterface: SwidInterface(
                        name: "DiagnosticLevel",
                        nullabilitySuffix: SwidNullabilitySuffix.none,
                        originalPackagePath:
                            "package:flutter/src/foundation/diagnostics.dart",
                        typeArguments: [],
                        referenceDeclarationKind:
                            SwidReferenceDeclarationKind.classElement,
                        declarationModifiers: SwidDeclarationModifiers.empty(),
                      ),
                    ),
                    "prefixLineOne": SwidType.fromSwidInterface(
                      swidInterface: SwidInterface(
                        name: "String",
                        nullabilitySuffix: SwidNullabilitySuffix.none,
                        originalPackagePath: "dart:core",
                        typeArguments: [],
                        referenceDeclarationKind:
                            SwidReferenceDeclarationKind.classElement,
                        declarationModifiers: SwidDeclarationModifiers.empty(),
                      ),
                    ),
                    "prefixOtherLines": SwidType.fromSwidInterface(
                      swidInterface: SwidInterface(
                        name: "String",
                        nullabilitySuffix: SwidNullabilitySuffix.question,
                        originalPackagePath: "dart:core",
                        typeArguments: [],
                        referenceDeclarationKind:
                            SwidReferenceDeclarationKind.classElement,
                        declarationModifiers: SwidDeclarationModifiers.empty(),
                      ),
                    )
                  },
                  namedDefaults: {
                    "minLevel": SwidDefaultFormalParameter(
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath:
                          "package:flutter/src/foundation/diagnostics.dart",
                      staticType: SwidType.fromSwidInterface(
                        swidInterface: SwidInterface(
                          name: "DiagnosticLevel",
                          nullabilitySuffix: SwidNullabilitySuffix.none,
                          originalPackagePath:
                              "package:flutter/src/foundation/diagnostics.dart",
                          typeArguments: [],
                          referenceDeclarationKind:
                              SwidReferenceDeclarationKind.classElement,
                          declarationModifiers:
                              SwidDeclarationModifiers.empty(),
                        ),
                      ),
                      value:
                          SwidStaticConst.fromSwidStaticConstPrefixedIdentifier(
                        staticConstPrefixedIdentifier:
                            SwidStaticConstPrefixedIdentifier(
                          prefix: SwidInterface(
                            name: "DiagnosticLevel",
                            nullabilitySuffix: SwidNullabilitySuffix.none,
                            originalPackagePath:
                                "package:flutter/src/foundation/diagnostics.dart",
                            typeArguments: [],
                            referenceDeclarationKind:
                                SwidReferenceDeclarationKind.classElement,
                            declarationModifiers:
                                SwidDeclarationModifiers.empty(),
                          ),
                          staticConstFieldReference:
                              SwidStaticConstFieldReference(
                            name: "debug",
                          ),
                        ),
                      ),
                      defaultValueCode: "DiagnosticLevel.debug",
                    ),
                    "prefixLineOne": SwidDefaultFormalParameter(
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath:
                          "package:flutter/src/foundation/diagnostics.dart",
                      staticType: SwidType.fromSwidInterface(
                        swidInterface: SwidInterface(
                          name: "String",
                          nullabilitySuffix: SwidNullabilitySuffix.question,
                          originalPackagePath: "dart:core",
                          typeArguments: [],
                          referenceDeclarationKind:
                              SwidReferenceDeclarationKind.classElement,
                          declarationModifiers:
                              SwidDeclarationModifiers.empty(),
                        ),
                      ),
                      value: SwidStaticConst.fromSwidStringLiteral(
                        swidStringLiteral: SwidStringLiteral(
                          value: "''",
                        ),
                      ),
                      defaultValueCode: "''",
                    )
                  },
                  normalParameterNames: [],
                  normalParameterTypes: [],
                  optionalParameterNames: [],
                  optionalParameterTypes: [],
                  returnType: SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      name: "String",
                      nullabilitySuffix: SwidNullabilitySuffix.question,
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
              isMixin: true,
              typeFormals: [],
            )
          ],
          implementedClasses: [],
          isMixin: false,
          typeFormals: [],
          extendedClass: SwidClass(
            name: "GestureArenaMember",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "",
            constructorType: null,
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
            typeFormals: [],
          ),
        ),
      ),
    );

    final pipeline = CachingPipeline(
      cacheMgr: const PipelineNoopCacheMgr(),
    );

    final res = pipeline.reduceFromTerm(
      DartRTManagedClassDeclaration(
        swidClass: pipeline.reduceFromTerm(
          ApplySuperTypes(
            swidClass: ir,
          ),
        ),
      ),
    );

    expect(res, """
class RTManagedDragGestureRecognizer extends _deb0.DragGestureRecognizer
    implements _36c2.Box<_deb0.DragGestureRecognizer> {
  RTManagedDragGestureRecognizer();

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _deb0.DragGestureRecognizer unwrap() => this;
  _deb0.DragGestureRecognizer get vmObject => this;
  @_fac9.override
  _fac9.String? toStringDeep(
      {_eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.debug,
      _fac9.String prefixLineOne = \'\',
      _fac9.String? prefixOtherLines}) {
    _36c2.Closure closure = table["toStringDeep"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}
""");
  }, tags: "swid");
}
