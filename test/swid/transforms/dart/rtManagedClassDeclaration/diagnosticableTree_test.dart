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
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final ir = SwidClass(
      name: "DiagnosticableTree",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/foundation/diagnostics.dart",
      constructorType: null,
      generativeConstructors: [],
      factoryConstructors: [],
      staticMethods: [],
      methods: [
        SwidFunctionType(
          name: "toStringShallow",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath:
              "package:flutter/src/foundation/diagnostics.dart",
          namedParameterTypes: {
            "joiner": SwidType.fromSwidInterface(
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
            )
          },
          namedDefaults: {
            "joiner": SwidDefaultFormalParameter(
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath:
                  "package:flutter/src/foundation/diagnostics.dart",
              staticType: SwidType.fromSwidInterface(
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
              value: SwidStaticConst.fromSwidStringLiteral(
                swidStringLiteral: SwidStringLiteral(
                  value: ", ",
                ),
              ),
              defaultValueCode: "', '",
            ),
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
                  declarationModifiers: SwidDeclarationModifiers.empty(),
                ),
              ),
              value: SwidStaticConst.fromSwidStaticConstPrefixedIdentifier(
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
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                  ),
                  staticConstFieldReference: SwidStaticConstFieldReference(
                    name: "debug",
                  ),
                ),
              ),
              defaultValueCode: "DiagnosticLevel.debug",
            )
          },
          normalParameterNames: [],
          normalParameterTypes: [],
          optionalParameterNames: [],
          optionalParameterTypes: [],
          returnType: SwidType.fromSwidInterface(
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
        format: true,
        swidClass: ir,
      ),
    );

    expect(res, """
class RTManagedDiagnosticableTree extends _eaf3.DiagnosticableTree
    implements _36c2.Box<_eaf3.DiagnosticableTree> {
  RTManagedDiagnosticableTree();

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _eaf3.DiagnosticableTree unwrap() => this;
  _eaf3.DiagnosticableTree get vmObject => this;
  @_fac9.override
  _fac9.String toStringShallow(
      {_fac9.String joiner = \', \',
      _eaf3.DiagnosticLevel minLevel = _eaf3.DiagnosticLevel.debug}) {
    _36c2.Closure closure = table["toStringShallow"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}
""");
  }, tags: "swid");
}
