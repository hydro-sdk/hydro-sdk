import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiClass.dart';
import 'package:hydro_sdk/swid/frontend/swidi/swidiFunctionDeclarationToSwidFunctionType.dart';
import 'package:hydro_sdk/swid/frontend/swidi/swidiShortHandOverrideToSwidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';

SwidClass swidiClassToSwidClass({
  required final SwidiClass swidiClass,
}) =>
    SwidClass(
      name: swidiClass.name,
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: swidiClass.libraryScopePrefix.name,
      constructorType: null,
      generativeConstructors: [],
      factoryConstructors: [],
      staticMethods: swidiClass.staticMethods
          .map(
            (x) => swidiFunctionDeclarationToSwidFunctionType(
              swidiFunctionDeclaration: x,
            ),
          )
          .toList(),
      methods: swidiClass.methods
          .map(
            (x) => swidiFunctionDeclarationToSwidFunctionType(
              swidiFunctionDeclaration: x,
            ),
          )
          .toList(),
      staticConstFieldDeclarations: [],
      instanceFieldDeclarations: {},
      declarationModifiers: swidiShortHandOverrideToSwidDeclarationModifiers(
        shortHandOverride: swidiClass.shortHandOverride,
      ),
      mixedInClasses: [],
      implementedClasses: [],
      extendedClass: null,
      isMixin: false,
      typeFormals: [],
    );
