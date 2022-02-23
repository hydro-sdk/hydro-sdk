import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartRtManagedClassDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalBound.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';
import 'package:hydro_sdk/swid/ir/transforms/applySuperTypes.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final ir = SwidClass(
      name: "BackdropFilterLayer",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/rendering/layer.dart",
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
        name: "ContainerLayer",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        originalPackagePath: "package:flutter/src/rendering/layer.dart",
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
          name: "Layer",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "package:flutter/src/rendering/layer.dart",
          constructorType: null,
          generativeConstructors: [],
          factoryConstructors: [],
          staticMethods: [],
          methods: [
            SwidFunctionType(
              name: "find",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath: "package:flutter/src/rendering/layer.dart",
              namedParameterTypes: {},
              namedDefaults: {},
              normalParameterNames: [
                "localPosition",
              ],
              normalParameterTypes: [
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
                  name: "S",
                  nullabilitySuffix: SwidNullabilitySuffix.question,
                  originalPackagePath:
                      "package:flutter/src/rendering/layer.dart",
                  typeArguments: [],
                  referenceDeclarationKind:
                      SwidReferenceDeclarationKind.typeParameterType,
                  declarationModifiers: SwidDeclarationModifiers.empty(),
                ),
              ),
              isFactory: false,
              typeFormals: [
                SwidTypeFormal(
                  value: SwidTypeFormalValue.fromString(
                    string: "S",
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
                ),
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
        ),
      ),
    );

    final pipeline = CachingPipeline(
      cacheMgr: const PipelineNoopCacheMgr(),
    );

    final res = pipeline.reduceFromTerm(
      DartRTManagedClassDeclaration(
        format: true,
        swidClass: pipeline.reduceFromTerm(
          ApplySuperTypes(
            swidClass: ir,
          ),
        ),
      ),
    );

    expect(res, """
class RTManagedBackdropFilterLayer extends _7d70.BackdropFilterLayer
    implements _36c2.Box<_7d70.BackdropFilterLayer> {
  RTManagedBackdropFilterLayer();

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _7d70.BackdropFilterLayer unwrap() => this;
  _7d70.BackdropFilterLayer get vmObject => this;
  @_fac9.override
  S? find<S extends _fac9.Object>(localPosition) {
    _36c2.Closure closure = table["find"];
    return closure.dispatch([table], parentState: hydroState)[0];
  }
}
""");
  }, tags: "swid");
}
