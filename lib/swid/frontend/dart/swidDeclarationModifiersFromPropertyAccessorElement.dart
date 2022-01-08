import 'package:analyzer/dart/element/element.dart'
    show PropertyAccessorElement;

import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';

SwidDeclarationModifiers swidDeclarationModifiersFromPropertyAccessorElement({
  required final PropertyAccessorElement propertyAccessorElement,
}) =>
    SwidDeclarationModifiers(
      ignoredAnalyses: [],
      ignoredTransforms: [],
      overridenTransforms: [],
      isAbstract: propertyAccessorElement.isAbstract,
      isGetter: propertyAccessorElement.isGetter,
      isOperator: propertyAccessorElement.isOperator,
      isSetter: propertyAccessorElement.isSetter,
      isStatic: propertyAccessorElement.isStatic,
      isSynthetic: propertyAccessorElement.isSynthetic,
      isCovariant: false,
      isExplicitlyCovariant: false,
      hasAlwaysThrows: propertyAccessorElement.hasAlwaysThrows,
      hasDeprecated: propertyAccessorElement.hasDeprecated,
      hasFactory: propertyAccessorElement.hasFactory,
      hasImplicitReturnType: propertyAccessorElement.hasImplicitReturnType,
      hasIsTest: propertyAccessorElement.hasIsTest,
      hasIsTestGroup: propertyAccessorElement.hasIsTestGroup,
      hasJS: propertyAccessorElement.hasJS,
      hasLiteral: propertyAccessorElement.hasLiteral,
      hasMustCallSuper: propertyAccessorElement.hasMustCallSuper,
      hasNonVirtual: propertyAccessorElement.hasNonVirtual,
      hasOptionalTypeArgs: propertyAccessorElement.hasOptionalTypeArgs,
      hasOverride: propertyAccessorElement.hasOverride,
      hasProtected: propertyAccessorElement.hasProtected,
      hasRequired: propertyAccessorElement.hasRequired,
      hasSealed: propertyAccessorElement.hasSealed,
      hasVisibleForTemplate: propertyAccessorElement.hasVisibleForTemplate,
      hasVisibleForTesting: propertyAccessorElement.hasVisibleForTesting,
      isPublic: propertyAccessorElement.isPublic,
    );
