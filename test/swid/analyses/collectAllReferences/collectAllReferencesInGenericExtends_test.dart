import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/ir/analyses/collectAllReferences.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
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
    final ir = SwidClass(
      name: "SplayTreeSet",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "dart:collection",
      constructorType: null,
      generativeConstructors: [],
      factoryConstructors: [],
      staticMethods: [],
      methods: [],
      staticConstFieldDeclarations: [],
      instanceFieldDeclarations: {},
      declarationModifiers: SwidDeclarationModifiers.empty(),
      extendedClass: SwidClass(
        name: "_SplayTree<E, _SplayTreeSetNode<E>>",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        originalPackagePath: "dart:collection",
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
        typeFormals: [
          SwidTypeFormal(
            swidTypeFormalBound: null,
            value: SwidTypeFormalValue.fromSwidInterface(
              swidInterface: SwidInterface(
                name: "E",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:collection",
                typeArguments: [],
                referenceDeclarationKind:
                    SwidReferenceDeclarationKind.typeParameterType,
                declarationModifiers: SwidDeclarationModifiers.empty(),
              ),
            ),
            swidReferenceDeclarationKind:
                SwidReferenceDeclarationKind.typeParameterType,
          ),
          SwidTypeFormal(
            swidTypeFormalBound: null,
            value: SwidTypeFormalValue.fromSwidClass(
              swidClass: SwidClass(
                name: "_SplayTreeSetNode<E>",
                nullabilitySuffix: SwidNullabilitySuffix.none,
                originalPackagePath: "dart:collection",
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
                typeFormals: [
                  SwidTypeFormal(
                    swidTypeFormalBound: null,
                    value: SwidTypeFormalValue.fromSwidInterface(
                      swidInterface: SwidInterface(
                        name: "E",
                        nullabilitySuffix: SwidNullabilitySuffix.none,
                        originalPackagePath: "dart:collection",
                        typeArguments: [],
                        referenceDeclarationKind:
                            SwidReferenceDeclarationKind.typeParameterType,
                        declarationModifiers: SwidDeclarationModifiers.empty(),
                      ),
                    ),
                    swidReferenceDeclarationKind:
                        SwidReferenceDeclarationKind.typeParameterType,
                  ),
                ],
              ),
            ),
            swidReferenceDeclarationKind:
                SwidReferenceDeclarationKind.typeParameterType,
          ),
        ],
      ),
      mixedInClasses: [
        SwidClass(
          name: "IterableMixin<E>",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "dart:collection",
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
        SwidClass(
          name: "SetMixin<E>",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "dart:collection",
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
      implementedClasses: [],
      isMixin: false,
      typeFormals: [
        SwidTypeFormal(
          swidTypeFormalBound: null,
          value: SwidTypeFormalValue.fromString(
            string: "E",
          ),
          swidReferenceDeclarationKind:
              SwidReferenceDeclarationKind.typeParameterType,
        )
      ],
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
      withFirstOrderSuperClassReferences.firstWhereOrNull(
          (x) => x.name == "_SplayTree<E, _SplayTreeSetNode<E>>"),
      isNotNull,
    );
    expect(
      withFirstOrderSuperClassReferences
          .firstWhereOrNull((x) => x.name == "_SplayTreeSetNode<E>"),
      isNotNull,
    );
    expect(
      withFirstOrderSuperClassReferences
          .firstWhereOrNull((x) => x.name == "IterableMixin<E>"),
      isNotNull,
    );
    expect(
      withFirstOrderSuperClassReferences
          .firstWhereOrNull((x) => x.name == "SetMixin<E>"),
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
      withoutFirstOrderSuperClassReferences.firstWhereOrNull(
          (x) => x.name == "_SplayTree<E, _SplayTreeSetNode<E>>"),
      isNotNull,
    );
    expect(
      withoutFirstOrderSuperClassReferences
          .firstWhereOrNull((x) => x.name == "IterableMixin<E>"),
      isNotNull,
    );
    expect(
      withoutFirstOrderSuperClassReferences
          .firstWhereOrNull((x) => x.name == "SetMixin<E>"),
      isNotNull,
    );
  }, tags: "swid");
}
