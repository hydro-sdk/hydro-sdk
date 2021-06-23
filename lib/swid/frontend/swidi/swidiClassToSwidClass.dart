import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiClass.dart';
import 'package:hydro_sdk/swid/frontend/swidi/swidiFunctionDeclarationToSwidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';

SwidClass swidiClassToSwidClass({required SwidiClass swidiClass}) => SwidClass(
      name: swidiClass.name,
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: swidiClass.libraryScopePrefix.name,
      constructorType: null,
      factoryConstructors: [],
      staticMethods: [],
      methods: swidiClass.methods
          .map((x) => swidiFunctionDeclarationToSwidFunctionType(
              swidiFunctionDeclaration: x))
          .toList(),
      staticConstFieldDeclarations: [],
      instanceFieldDeclarations: {},
      swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: [],
      implementedClasses: [],
      extendedClass: null,
      isMixin: false,
      typeFormals: [],
    );
