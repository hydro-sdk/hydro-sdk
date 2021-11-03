import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformPrimitiveNamesToTs.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var float32List = SwidClass(
      name: "Float32List",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "dart:typed_data",
      constructorType: null,
      generativeConstructors: [],
      factoryConstructors: [],
      staticMethods: [],
      methods: [],
      implementedClasses: [],
      staticConstFieldDeclarations: [],
      instanceFieldDeclarations: {},
      declarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      extendedClass: SwidClass(
        name: "List<double>",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        originalPackagePath: "dart:core",
        constructorType: null,
        generativeConstructors: [],
        factoryConstructors: [],
        staticMethods: [],
        methods: [],
        implementedClasses: [],
        staticConstFieldDeclarations: [],
        instanceFieldDeclarations: {},
        declarationModifiers: SwidDeclarationModifiers.empty(),
        mixedInClasses: [],
        extendedClass: null,
        isMixin: false,
        typeFormals: [
          SwidTypeFormal(
            swidTypeFormalBound: null,
            value: SwidTypeFormalValue.fromSwidClass(
              swidClass: SwidClass(
                name: "double",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:core",
                generativeConstructors: [],
                constructorType: null,
                factoryConstructors: [],
                staticMethods: [],
                methods: [],
                implementedClasses: [],
                staticConstFieldDeclarations: [],
                instanceFieldDeclarations: {},
                declarationModifiers: SwidDeclarationModifiers.empty(),
                mixedInClasses: [],
                extendedClass: null,
                isMixin: false,
                typeFormals: [],
              ),
            ),
            swidReferenceDeclarationKind:
                SwidReferenceDeclarationKind.classElement,
          )
        ],
      ),
      isMixin: false,
      typeFormals: [],
    );

    expect(float32List.extendedClass!.displayName, "List<double>");
    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        )
            .reduceFromTerm(
              TransformPrimitiveNamesToTs(
                swidType: SwidType.fromSwidClass(
                  swidClass: float32List,
                ),
              ),
            )
            .when(
              fromSwidInterface: (_) => null,
              fromSwidClass: (val) => val,
              fromSwidDefaultFormalParameter: (_) => null,
              fromSwidFunctionType: (_) => null,
            )!
            .extendedClass!
            .displayName,
        "List<number>");
  }, tags: "swid");
}
