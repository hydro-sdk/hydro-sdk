import 'package:freezed_annotation/freezed_annotation.dart';

part 'swidDeclarationModifiers.freezed.dart';
part 'swidDeclarationModifiers.g.dart';

@freezed
class StringTuple with _$StringTuple {
  const StringTuple._();

  const factory StringTuple({
    required String item1,
    required String item2,
  }) = _$StringTupleCtor;
  factory StringTuple.clone({
    required StringTuple stringTuple,
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
    required List<String> ignoredTransforms,
    required List<String> ignoredAnalyses,
    required List<StringTuple> overridenTransforms,
    required bool isAbstract,
    required bool isGetter,
    required bool isOperator,
    required bool isSetter,
    required bool isStatic,
    required bool isSynthetic,
    required bool hasAlwaysThrows,
    required bool hasDeprecated,
    required bool hasFactory,
    required bool hasImplicitReturnType,
    required bool hasIsTest,
    required bool hasIsTestGroup,
    required bool hasJS,
    required bool hasLiteral,
    required bool hasMustCallSuper,
    required bool hasNonVirtual,
    required bool hasOptionalTypeArgs,
    required bool hasOverride,
    required bool hasProtected,
    required bool hasRequired,
    required bool hasSealed,
    required bool hasVisibleForTemplate,
    required bool hasVisibleForTesting,
    required bool isPublic,
  }) = _$Data;

  factory SwidDeclarationModifiers.fromJson(Map<String, dynamic> json) =>
      _$SwidDeclarationModifiersFromJson(json);

  factory SwidDeclarationModifiers.clone({
    required SwidDeclarationModifiers swidDeclarationModifiers,
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
            List.from(swidDeclarationModifiers.ignoredTransforms),
        ignoredAnalyses: ignoredAnalyses ??
            List.from(swidDeclarationModifiers.ignoredAnalyses),
        overridenTransforms: overridenTransforms ??
            swidDeclarationModifiers.overridenTransforms
                .map(
                  (x) => StringTuple.clone(
                    stringTuple: x,
                  ),
                )
                .toList(),
        isAbstract: isAbstract ?? swidDeclarationModifiers.isAbstract,
        isGetter: isGetter ?? swidDeclarationModifiers.isGetter,
        isOperator: isOperator ?? swidDeclarationModifiers.isOperator,
        isSetter: isSetter ?? swidDeclarationModifiers.isSetter,
        isStatic: isStatic ?? swidDeclarationModifiers.isStatic,
        isSynthetic: isSynthetic ?? swidDeclarationModifiers.isSynthetic,
        hasAlwaysThrows:
            hasAlwaysThrows ?? swidDeclarationModifiers.hasAlwaysThrows,
        hasDeprecated: hasDeprecated ?? swidDeclarationModifiers.hasDeprecated,
        hasFactory: hasFactory ?? swidDeclarationModifiers.hasFactory,
        hasImplicitReturnType: hasImplicitReturnType ??
            swidDeclarationModifiers.hasImplicitReturnType,
        hasIsTest: hasIsTest ?? swidDeclarationModifiers.hasIsTest,
        hasIsTestGroup:
            hasIsTestGroup ?? swidDeclarationModifiers.hasIsTestGroup,
        hasJS: hasJS ?? swidDeclarationModifiers.hasJS,
        hasLiteral: hasLiteral ?? swidDeclarationModifiers.hasLiteral,
        hasMustCallSuper:
            hasMustCallSuper ?? swidDeclarationModifiers.hasMustCallSuper,
        hasNonVirtual: hasNonVirtual ?? swidDeclarationModifiers.hasNonVirtual,
        hasOptionalTypeArgs:
            hasOptionalTypeArgs ?? swidDeclarationModifiers.hasOptionalTypeArgs,
        hasOverride: hasOverride ?? swidDeclarationModifiers.hasOverride,
        hasProtected: hasProtected ?? swidDeclarationModifiers.hasProtected,
        hasRequired: hasRequired ?? swidDeclarationModifiers.hasRequired,
        hasSealed: hasSealed ?? swidDeclarationModifiers.hasSealed,
        hasVisibleForTemplate: hasVisibleForTemplate ??
            swidDeclarationModifiers.hasVisibleForTemplate,
        hasVisibleForTesting: hasVisibleForTesting ??
            swidDeclarationModifiers.hasVisibleForTemplate,
        isPublic: isPublic ?? swidDeclarationModifiers.isPublic,
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
