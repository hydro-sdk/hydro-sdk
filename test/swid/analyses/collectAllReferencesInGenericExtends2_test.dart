import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/analyses/collectAllReferences.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    final ir = SwidClass(
      name: "BackdropFilterEngineLayer",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "dart:ui",
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
        name: "_EngineLayerWrapper",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        originalPackagePath: "dart:ui",
        constructorType: null,
        generativeConstructors: [],
        factoryConstructors: [],
        staticMethods: [],
        methods: [],
        staticConstFieldDeclarations: [],
        instanceFieldDeclarations: {},
        declarationModifiers: SwidDeclarationModifiers.empty(),
        mixedInClasses: [],
        implementedClasses: [
          SwidClass(
            name: "EngineLayer",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "dart:ui",
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
        ],
        isMixin: false,
        typeFormals: [],
      ),
    );

    final withFirstOrderSuperClassReferences = CachingPipeline(
      cacheMgr: const PipelineNoopCacheMgr(),
    ).reduceFromTerm(
      CollectAllReferences(
        includeFirstOrderSuperClassReferences: true,
        swidType: SwidType.fromSwidClass(
          swidClass: ir,
        ),
      ),
    );

    expect(
      withFirstOrderSuperClassReferences
          .firstWhereOrNull((x) => x.name == "_EngineLayerWrapper"),
      isNotNull,
    );

    final withoutFirstOrderSuperClassReferences = CachingPipeline(
      cacheMgr: const PipelineNoopCacheMgr(),
    ).reduceFromTerm(
      CollectAllReferences(
        swidType: SwidType.fromSwidClass(
          swidClass: ir,
        ),
      ),
    );

    expect(
      withoutFirstOrderSuperClassReferences
          .firstWhereOrNull((x) => x.name == "_EngineLayerWrapper"),
      isNotNull,
    );
  }, tags: "swid");
}
