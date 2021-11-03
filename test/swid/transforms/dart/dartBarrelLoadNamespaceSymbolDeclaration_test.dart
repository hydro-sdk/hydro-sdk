import 'package:flutter_test/flutter_test.dart';

import 'package:hydro_sdk/swid/backend/dart/dartBarrelLoadNamespaceSymbolDeclaration.dart';
import 'package:hydro_sdk/swid/backend/util/barrelMember.dart';
import 'package:hydro_sdk/swid/backend/util/resolveBarrelSpecs.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/swars/cachingPipeline.dart';
import 'package:hydro_sdk/swid/swars/pipelineNoopCacheMgr.dart';

void main() {
  LiveTestWidgetsFlutterBinding();
  testWidgets('', (WidgetTester tester) async {
    var barrelSpec = resolveBarrelSpecs(
      members: [
        BarrelMember.fromSwidClass(
          swidClass: SwidClass(
            name: "Iterable",
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
            typeFormals: [],
          ),
        ),
        BarrelMember.fromSwidClass(
          swidClass: SwidClass(
            name: "Offset",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "dart:ui",
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
            typeFormals: [],
          ),
        ),
        BarrelMember.fromSwidClass(
          swidClass: SwidClass(
            name: "RRect",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "dart:ui",
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
            typeFormals: [],
          ),
        ),
        BarrelMember.fromSwidClass(
          swidClass: SwidClass(
            name: "List",
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
            typeFormals: [],
          ),
        ),
        BarrelMember.fromSwidClass(
          swidClass: SwidClass(
            name: "EfficientLengthIterable",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "dart:_internal",
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
            typeFormals: [],
          ),
        ),
        BarrelMember.fromSwidClass(
          swidClass: SwidClass(
            name: "Random",
            nullabilitySuffix: SwidNullabilitySuffix.none,
            originalPackagePath: "dart:math",
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
            typeFormals: [],
          ),
        ),
      ],
    );

    expect(barrelSpec.isTopLevel(), true);

    expect(
        CachingPipeline(
          cacheMgr: const PipelineNoopCacheMgr(),
        ).reduceFromTerm(
          DartBarrelLoadNamespaceSymbolDeclaration(barrelSpec: barrelSpec),
        ),
        """
void loaddart({required HydroState hydroState, required Context context}) {
  final dart = HydroTable();
  context.env[\'dart\'] = dart;
  loadcore(table: dart, hydroState: hydroState);
  loadui(table: dart, hydroState: hydroState);
  loadmath(table: dart, hydroState: hydroState);
}
""");
  }, tags: "swid");
}
