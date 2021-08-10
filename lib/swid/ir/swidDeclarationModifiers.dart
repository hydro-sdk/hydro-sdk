import 'package:freezed_annotation/freezed_annotation.dart';

part 'swidDeclarationModifiers.freezed.dart';
part 'swidDeclarationModifiers.g.dart';

@freezed
class StringTuple with _$StringTuple {
  const StringTuple._();

  const factory StringTuple({
    required final String item1,
    required final String item2,
  }) = _$StringTupleCtor;
  factory StringTuple.clone({
    required final StringTuple stringTuple,
    String? item1,
    String? item2,
  }) =>
      StringTuple(
        item1: item1 ?? stringTuple.item1,
        item2: item2 ?? stringTuple.item2,
      );

  factory StringTuple.fromJson(Map<String, dynamic> json) =>
      _$StringTupleFromJson(json);
}

@freezed
class SwidDeclarationModifiers with _$SwidDeclarationModifiers {
  const factory SwidDeclarationModifiers({
    required final List<String> ignoredTransforms,
    required final List<String> ignoredAnalyses,
    required final List<StringTuple> overridenTransforms,
    required final bool isAbstract,
    required final bool isGetter,
    required final bool isOperator,
    required final bool isSetter,
    required final bool isStatic,
    required final bool isSynthetic,
    required final bool hasAlwaysThrows,
    required final bool hasDeprecated,
    required final bool hasFactory,
    required final bool hasImplicitReturnType,
    required final bool hasIsTest,
    required final bool hasIsTestGroup,
    required final bool hasJS,
    required final bool hasLiteral,
    required final bool hasMustCallSuper,
    required final bool hasNonVirtual,
    required final bool hasOptionalTypeArgs,
    required final bool hasOverride,
    required final bool hasProtected,
    required final bool hasRequired,
    required final bool hasSealed,
    required final bool hasVisibleForTemplate,
    required final bool hasVisibleForTesting,
    required final bool isPublic,
  }) = _$Data;

  factory SwidDeclarationModifiers.fromJson(Map<String, dynamic> json) =>
      _$SwidDeclarationModifiersFromJson(json);

  factory SwidDeclarationModifiers.clone({
    required final SwidDeclarationModifiers declarationModifiers,
    List<String>? ignoredTransforms,
    List<String>? ignoredAnalyses,
    List<StringTuple>? overridenTransforms,
    bool? isAbstract,
    bool? isGetter,
    bool? isOperator,
    bool? isSetter,
    bool? isStatic,
    bool? isSynthetic,
    bool? hasAlwaysThrows,
    bool? hasDeprecated,
    bool? hasFactory,
    bool? hasImplicitReturnType,
    bool? hasIsTest,
    bool? hasIsTestGroup,
    bool? hasJS,
    bool? hasLiteral,
    bool? hasMustCallSuper,
    bool? hasNonVirtual,
    bool? hasOptionalTypeArgs,
    bool? hasOverride,
    bool? hasProtected,
    bool? hasRequired,
    bool? hasSealed,
    bool? hasVisibleForTemplate,
    bool? hasVisibleForTesting,
    bool? isPublic,
  }) =>
      SwidDeclarationModifiers(
        ignoredTransforms: ignoredTransforms ??
            List.from(declarationModifiers.ignoredTransforms),
        ignoredAnalyses:
            ignoredAnalyses ?? List.from(declarationModifiers.ignoredAnalyses),
        overridenTransforms: overridenTransforms ??
            declarationModifiers.overridenTransforms
                .map(
                  (x) => StringTuple.clone(
                    stringTuple: x,
                  ),
                )
                .toList(),
        isAbstract: isAbstract ?? declarationModifiers.isAbstract,
        isGetter: isGetter ?? declarationModifiers.isGetter,
        isOperator: isOperator ?? declarationModifiers.isOperator,
        isSetter: isSetter ?? declarationModifiers.isSetter,
        isStatic: isStatic ?? declarationModifiers.isStatic,
        isSynthetic: isSynthetic ?? declarationModifiers.isSynthetic,
        hasAlwaysThrows:
            hasAlwaysThrows ?? declarationModifiers.hasAlwaysThrows,
        hasDeprecated: hasDeprecated ?? declarationModifiers.hasDeprecated,
        hasFactory: hasFactory ?? declarationModifiers.hasFactory,
        hasImplicitReturnType:
            hasImplicitReturnType ?? declarationModifiers.hasImplicitReturnType,
        hasIsTest: hasIsTest ?? declarationModifiers.hasIsTest,
        hasIsTestGroup: hasIsTestGroup ?? declarationModifiers.hasIsTestGroup,
        hasJS: hasJS ?? declarationModifiers.hasJS,
        hasLiteral: hasLiteral ?? declarationModifiers.hasLiteral,
        hasMustCallSuper:
            hasMustCallSuper ?? declarationModifiers.hasMustCallSuper,
        hasNonVirtual: hasNonVirtual ?? declarationModifiers.hasNonVirtual,
        hasOptionalTypeArgs:
            hasOptionalTypeArgs ?? declarationModifiers.hasOptionalTypeArgs,
        hasOverride: hasOverride ?? declarationModifiers.hasOverride,
        hasProtected: hasProtected ?? declarationModifiers.hasProtected,
        hasRequired: hasRequired ?? declarationModifiers.hasRequired,
        hasSealed: hasSealed ?? declarationModifiers.hasSealed,
        hasVisibleForTemplate:
            hasVisibleForTemplate ?? declarationModifiers.hasVisibleForTemplate,
        hasVisibleForTesting:
            hasVisibleForTesting ?? declarationModifiers.hasVisibleForTemplate,
        isPublic: isPublic ?? declarationModifiers.isPublic,
      );

  factory SwidDeclarationModifiers.empty() => SwidDeclarationModifiers.only();

  factory SwidDeclarationModifiers.only({
    List<String> ignoredTransforms: const [],
    List<String> ignoredAnalyses: const [],
    List<StringTuple> overridenTransforms: const [],
    bool isAbstract: false,
    bool isGetter: false,
    bool isOperator: false,
    bool isSetter: false,
    bool isStatic: false,
    bool isSynthetic: false,
    bool hasAlwaysThrows: false,
    bool hasDeprecated: false,
    bool hasFactory: false,
    bool hasImplicitReturnType: false,
    bool hasIsTest: false,
    bool hasIsTestGroup: false,
    bool hasJS: false,
    bool hasLiteral: false,
    bool hasMustCallSuper: false,
    bool hasNonVirtual: false,
    bool hasOptionalTypeArgs: false,
    bool hasOverride: false,
    bool hasProtected: false,
    bool hasRequired: false,
    bool hasSealed: false,
    bool hasVisibleForTemplate: false,
    bool hasVisibleForTesting: false,
    bool isPublic: true,
  }) =>
      SwidDeclarationModifiers(
        ignoredTransforms: ignoredTransforms,
        ignoredAnalyses: ignoredAnalyses,
        overridenTransforms: overridenTransforms,
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
        isPublic: isPublic,
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
