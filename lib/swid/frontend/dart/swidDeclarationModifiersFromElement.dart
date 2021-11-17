import 'package:analyzer/dart/element/element.dart';

import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';

SwidDeclarationModifiers swidDeclarationModifiersFromElement({
  required final Element element,
}) =>
    SwidDeclarationModifiers.empty().clone(
      isSynthetic: element.isSynthetic,
      hasAlwaysThrows: element.hasAlwaysThrows,
      hasDeprecated: element.hasDeprecated,
      hasFactory: element.hasFactory,
      hasIsTest: element.hasIsTest,
      hasIsTestGroup: element.hasIsTestGroup,
      hasJS: element.hasJS,
      hasLiteral: element.hasLiteral,
      hasMustCallSuper: element.hasMustCallSuper,
      hasNonVirtual: element.hasNonVirtual,
      hasOptionalTypeArgs: element.hasOptionalTypeArgs,
      hasOverride: element.hasOverride,
      hasProtected: element.hasProtected,
      hasRequired: element.hasRequired,
      hasSealed: element.hasSealed,
      hasVisibleForTemplate: element.hasVisibleForTemplate,
      hasVisibleForTesting: element.hasVisibleForTesting,
      isPublic: element.isPublic,
    );
