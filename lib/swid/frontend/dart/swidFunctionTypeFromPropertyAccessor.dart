import 'package:hydro_sdk/swid/frontend/dart/swidFunctionTypeFromFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';

import 'package:analyzer/dart/element/element.dart'
    show PropertyAccessorElement;

SwidFunctionType swidFunctionTypeFromPropertyAccessor({
  required final PropertyAccessorElement propertyAccessorElement,
  required final bool buildElements,
}) =>
    SwidFunctionType.clone(
      swidFunctionType: swidFunctionTypeFromFunctionType(
        buildElements: buildElements,
        functionType: propertyAccessorElement.type,
        declarationModifiers: SwidDeclarationModifiers.empty().clone(
          hasAlwaysThrows: propertyAccessorElement.hasAlwaysThrows,
          hasDeprecated: propertyAccessorElement.hasDeprecated,
          hasFactory: propertyAccessorElement.hasFactory,
          hasImplicitReturnType: propertyAccessorElement.hasImplicitReturnType,
          hasIsTest: propertyAccessorElement.hasIsTest,
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
          isAbstract: propertyAccessorElement.isAbstract,
          isGetter: propertyAccessorElement.isGetter,
          isOperator: propertyAccessorElement.isOperator,
          isPublic: propertyAccessorElement.isPublic,
          isSetter: propertyAccessorElement.isSetter,
          isStatic: propertyAccessorElement.isStatic,
          isSynthetic: propertyAccessorElement.isSynthetic,
        ),
      ),
      name: propertyAccessorElement.name,
    );
