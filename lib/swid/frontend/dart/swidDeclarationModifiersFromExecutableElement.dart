import 'package:analyzer/dart/element/element.dart' show ExecutableElement;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';

SwidDeclarationModifiers swidDeclarationModifiersFromExecutableElement(
        {@required ExecutableElement executableElement}) =>
    SwidDeclarationModifiers(
      isAbstract: executableElement.isAbstract,
      isGetter: false,
      isOperator: executableElement.isOperator,
      isSetter: false,
      isStatic: executableElement.isStatic,
      isSynthetic: executableElement.isSynthetic,
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
      hasVisibleForTesting: executableElement.hasVisibleForTemplate,
      isPublic: executableElement.isPublic,
    );