import 'package:analyzer/dart/element/element.dart' show ExecutableElement;

import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';

SwidDeclarationModifiers swidDeclarationModifiersFromExecutableElement({
  required final ExecutableElement executableElement,
}) =>
    SwidDeclarationModifiers(
      ignoredAnalyses: [],
      ignoredTransforms: [],
      overridenTransforms: [],
      isAbstract: executableElement.isAbstract,
      isGetter: false,
      isOperator: executableElement.isOperator,
      isSetter: false,
      isStatic: executableElement.isStatic,
      isSynthetic: executableElement.isSynthetic,
      isCovariant: false,
      isExplicitlyCovariant: false,
      hasAlwaysThrows: executableElement.hasAlwaysThrows,
      hasDeprecated: executableElement.hasDeprecated,
      hasFactory: executableElement.hasFactory,
      hasImplicitReturnType: executableElement.hasImplicitReturnType,
      hasIsTest: executableElement.hasIsTest,
      hasIsTestGroup: executableElement.hasIsTestGroup,
      hasJS: executableElement.hasJS,
      hasLiteral: executableElement.hasLiteral,
      hasMustCallSuper: executableElement.hasMustCallSuper,
      hasNonVirtual: executableElement.hasNonVirtual,
      hasOptionalTypeArgs: executableElement.hasOptionalTypeArgs,
      hasOverride: executableElement.hasOverride,
      hasProtected: executableElement.hasProtected,
      hasRequired: executableElement.hasRequired,
      hasSealed: executableElement.hasSealed,
      hasVisibleForTemplate: executableElement.hasVisibleForTemplate,
      hasVisibleForTesting: executableElement.hasVisibleForTesting,
      isPublic: executableElement.isPublic,
    );
