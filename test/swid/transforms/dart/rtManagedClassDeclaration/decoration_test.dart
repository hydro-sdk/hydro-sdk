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
      name: "Decoration",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "package:flutter/src/painting/decoration.dart",
      constructorType: null,
      generativeConstructors: [],
      factoryConstructors: [],
      staticMethods: [],
      methods: [
        SwidFunctionType(
          name: "createBoxPainter",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "package:flutter/src/painting/decoration.dart",
          namedParameterTypes: {},
          namedDefaults: {},
          normalParameterNames: [],
          normalParameterTypes: [],
          optionalParameterNames: [
            "onChanged",
          ],
          optionalParameterTypes: [
            SwidType.fromSwidFunctionType(
              swidFunctionType: SwidFunctionType(
                name: "",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath:
                    "package:flutter/src/painting/decoration.dart",
                namedParameterTypes: {},
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
          returnType: SwidType.fromSwidInterface(
            swidInterface: SwidInterface(
              name: "BoxPainter",
              nullabilitySuffix: SwidNullabilitySuffix.none,
              originalPackagePath:
                  "package:flutter/src/painting/decoration.dart",
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
class RTManagedDecoration extends _13a5.Decoration
    implements _36c2.Box<_13a5.Decoration> {
  RTManagedDecoration();

  final _36c2.HydroTable table;

  final _36c2.HydroState hydroState;

  _13a5.Decoration unwrap() => this;
  _13a5.Decoration get vmObject => this;
  @_fac9.override
  _13a5.BoxPainter createBoxPainter([void Function()? onChanged]) {
    _36c2.Closure closure = table["createBoxPainter"];
    return _36c2.maybeUnBoxAndBuildArgument<_13a5.BoxPainter, _fac9.dynamic>(
        closure.dispatch([table], parentState: hydroState)[0],
        parentState: hydroState);
  }
}
""");
  }, tags: "swid");
}
