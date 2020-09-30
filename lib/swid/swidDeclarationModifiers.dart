import 'package:analyzer/dart/element/element.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'swidDeclarationModifiers.g.dart';

@JsonSerializable()
class SwidDeclarationModifiers {
  final bool isAbstract;
  final bool isGetter;
  final bool isOperator;
  final bool isSetter;
  final bool isStatic;
  final bool isSynthetic;
  final bool hasAlwaysThrows;
  final bool hasDeprecated;
  final bool hasFactory;
  final bool hasImplicitReturnType;
  final bool hasIsTest;
  final bool hasIsTestGroup;
  final bool hasJS;
  final bool hasLiteral;
  final bool hasMustCallSuper;
  final bool hasNonVirtual;
  final bool hasOptionalTypeArgs;
  final bool hasOverride;
  final bool hasProtected;
  final bool hasRequired;
  final bool hasSealed;
  final bool hasVisibleForTemplate;
  final bool hasVisibleForTesting;

  SwidDeclarationModifiers({
    @required this.isAbstract,
    @required this.isGetter,
    @required this.isOperator,
    @required this.isSetter,
    @required this.isStatic,
    @required this.isSynthetic,
    @required this.hasAlwaysThrows,
    @required this.hasDeprecated,
    @required this.hasFactory,
    @required this.hasImplicitReturnType,
    @required this.hasIsTest,
    @required this.hasIsTestGroup,
    @required this.hasJS,
    @required this.hasLiteral,
    @required this.hasMustCallSuper,
    @required this.hasNonVirtual,
    @required this.hasOptionalTypeArgs,
    @required this.hasOverride,
    @required this.hasProtected,
    @required this.hasRequired,
    @required this.hasSealed,
    @required this.hasVisibleForTemplate,
    @required this.hasVisibleForTesting,
  });

  Map<String, dynamic> toJson() => _$SwidDeclarationModifiersToJson(this);

  factory SwidDeclarationModifiers.fromJson(Map<String, dynamic> json) =>
      _$SwidDeclarationModifiersFromJson(json);

  factory SwidDeclarationModifiers.fromExecutableElement(
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
      );

  factory SwidDeclarationModifiers.fromPropertyAccessorElement(
          {@required PropertyAccessorElement propertyAccessorElement}) =>
      SwidDeclarationModifiers(
        isAbstract: propertyAccessorElement.isAbstract,
        isGetter: propertyAccessorElement.isGetter,
        isOperator: propertyAccessorElement.isOperator,
        isSetter: propertyAccessorElement.isSetter,
        isStatic: propertyAccessorElement.isStatic,
        isSynthetic: propertyAccessorElement.isSynthetic,
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
        hasVisibleForTesting: propertyAccessorElement.hasVisibleForTemplate,
      );

  factory SwidDeclarationModifiers.clone(
          {@required SwidDeclarationModifiers swidDeclarationModifiers}) =>
      SwidDeclarationModifiers(
        isAbstract: swidDeclarationModifiers.isAbstract,
        isGetter: swidDeclarationModifiers.isGetter,
        isOperator: swidDeclarationModifiers.isOperator,
        isSetter: swidDeclarationModifiers.isSetter,
        isStatic: swidDeclarationModifiers.isStatic,
        isSynthetic: swidDeclarationModifiers.isSynthetic,
        hasAlwaysThrows: swidDeclarationModifiers.hasAlwaysThrows,
        hasDeprecated: swidDeclarationModifiers.hasDeprecated,
        hasFactory: swidDeclarationModifiers.hasFactory,
        hasImplicitReturnType: swidDeclarationModifiers.hasImplicitReturnType,
        hasIsTest: swidDeclarationModifiers.hasIsTest,
        hasIsTestGroup: swidDeclarationModifiers.hasIsTestGroup,
        hasJS: swidDeclarationModifiers.hasJS,
        hasLiteral: swidDeclarationModifiers.hasLiteral,
        hasMustCallSuper: swidDeclarationModifiers.hasMustCallSuper,
        hasNonVirtual: swidDeclarationModifiers.hasNonVirtual,
        hasOptionalTypeArgs: swidDeclarationModifiers.hasOptionalTypeArgs,
        hasOverride: swidDeclarationModifiers.hasOverride,
        hasProtected: swidDeclarationModifiers.hasProtected,
        hasRequired: swidDeclarationModifiers.hasRequired,
        hasSealed: swidDeclarationModifiers.hasSealed,
        hasVisibleForTemplate: swidDeclarationModifiers.hasVisibleForTemplate,
        hasVisibleForTesting: swidDeclarationModifiers.hasVisibleForTemplate,
      );

  factory SwidDeclarationModifiers.empty() => SwidDeclarationModifiers.only();

  factory SwidDeclarationModifiers.only({
    isAbstract: false,
    isGetter: false,
    isOperator: false,
    isSetter: false,
    isStatic: false,
    isSynthetic: false,
    hasAlwaysThrows: false,
    hasDeprecated: false,
    hasFactory: false,
    hasImplicitReturnType: false,
    hasIsTest: false,
    hasIsTestGroup: false,
    hasJS: false,
    hasLiteral: false,
    hasMustCallSuper: false,
    hasNonVirtual: false,
    hasOptionalTypeArgs: false,
    hasOverride: false,
    hasProtected: false,
    hasRequired: false,
    hasSealed: false,
    hasVisibleForTemplate: false,
    hasVisibleForTesting: false,
  }) =>
      SwidDeclarationModifiers(
        isAbstract: isAbstract,
        isGetter: isGetter,
        isOperator: isOperator,
        isSetter: isSetter,
        isStatic: isStatic,
        isSynthetic: isSynthetic,
        hasAlwaysThrows: hasAlwaysThrows,
        hasDeprecated: hasDeprecated,
        hasFactory: hasFactory,
        hasImplicitReturnType: hasImplicitReturnType,
        hasIsTest: hasIsTest,
        hasIsTestGroup: hasIsTestGroup,
        hasJS: hasJS,
        hasLiteral: hasLiteral,
        hasMustCallSuper: hasMustCallSuper,
        hasNonVirtual: hasNonVirtual,
        hasOptionalTypeArgs: hasOptionalTypeArgs,
        hasOverride: hasOverride,
        hasProtected: hasProtected,
        hasRequired: hasRequired,
        hasSealed: hasSealed,
        hasVisibleForTemplate: hasVisibleForTemplate,
        hasVisibleForTesting: hasVisibleForTesting,
      );

  factory SwidDeclarationModifiers.syntheticGetter() =>
      SwidDeclarationModifiers.only(
        isGetter: true,
      );

  factory SwidDeclarationModifiers.syntheticSetter() =>
      SwidDeclarationModifiers.only(
        isSetter: true,
      );
}
