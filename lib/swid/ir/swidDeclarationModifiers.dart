import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidDeclarationModifiers.freezed.dart';
part 'swidDeclarationModifiers.g.dart';

@freezed
class StringTuple
    with
        _$StringTuple,
        HashKeyMixin<StringTuple>,
        HashComparableMixin<StringTuple>
    implements ICopyable<StringTuple, $StringTupleCopyWith<StringTuple>> {
  StringTuple._();

  factory StringTuple({
    required final String item1,
    required final String item2,
  }) = _$StringTupleCtor;

  factory StringTuple._clone({
    required final StringTuple stringTuple,
    final String? item1,
    final String? item2,
  }) =>
      StringTuple(
        item1: item1 ?? stringTuple.item1,
        item2: item2 ?? stringTuple.item2,
      );

  @override
  late final Iterable<Iterable<int>> hashableParts = (() sync* {
    yield* item1.hashableParts;
    yield* item2.hashableParts;
  })();

  factory StringTuple.fromJson(Map<String, dynamic> json) =>
      _$StringTupleFromJson(json);

  @override
  StringTuple clone({
    final String? item1,
    final String? item2,
  }) =>
      StringTuple._clone(
        stringTuple: this,
        item1: item1,
        item2: item2,
      );
}

@freezed
class SwidDeclarationModifiers
    with
        _$SwidDeclarationModifiers,
        HashKeyMixin<SwidDeclarationModifiers>,
        HashComparableMixin<SwidDeclarationModifiers>
    implements
        ICopyable<SwidDeclarationModifiers,
            $SwidDeclarationModifiersCopyWith<SwidDeclarationModifiers>> {
  SwidDeclarationModifiers._();

  factory SwidDeclarationModifiers({
    required final List<String> ignoredTransforms,
    required final List<String> ignoredAnalyses,
    required final List<StringTuple> overridenTransforms,
    required final bool isAbstract,
    required final bool isGetter,
    required final bool isOperator,
    required final bool isSetter,
    required final bool isStatic,
    required final bool isSynthetic,
    required final bool isCovariant,
    required final bool isExplicitlyCovariant,
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

  @override
  late final Iterable<Iterable<int>> hashableParts = (() sync* {
    yield* ignoredTransforms.hashableParts;
    yield* ignoredAnalyses.hashableParts;
    yield* overridenTransforms.hashableParts;
    yield [
      ...isAbstract.hashableParts,
    ];
    yield [
      ...isGetter.hashableParts,
    ];
    yield [
      ...isOperator.hashableParts,
    ];
    yield [
      ...isSetter.hashableParts,
    ];
    yield [
      ...isStatic.hashableParts,
    ];
    yield [
      ...isSynthetic.hashableParts,
    ];
    yield [
      ...isCovariant.hashableParts,
    ];
    yield [
      ...isExplicitlyCovariant.hashableParts,
    ];
    yield [
      ...hasAlwaysThrows.hashableParts,
    ];
    yield [
      ...hasDeprecated.hashableParts,
    ];
    yield [
      ...hasFactory.hashableParts,
    ];
    yield [
      ...hasImplicitReturnType.hashableParts,
    ];
    yield [
      ...hasIsTest.hashableParts,
    ];
    yield [
      ...hasIsTestGroup.hashableParts,
    ];
    yield [
      ...hasJS.hashableParts,
    ];
    yield [
      ...hasLiteral.hashableParts,
    ];
    yield [
      ...hasMustCallSuper.hashableParts,
    ];
    yield [
      ...hasNonVirtual.hashableParts,
    ];
    yield [
      ...hasOptionalTypeArgs.hashableParts,
    ];
    yield [
      ...hasOverride.hashableParts,
    ];
    yield [
      ...hasProtected.hashableParts,
    ];
    yield [
      ...hasRequired.hashableParts,
    ];
    yield [
      ...hasSealed.hashableParts,
    ];
    yield [
      ...hasVisibleForTemplate.hashableParts,
    ];
    yield [
      ...hasVisibleForTesting.hashableParts,
    ];
    yield [
      ...isPublic.hashableParts,
    ];
  })();

  factory SwidDeclarationModifiers.fromJson(Map<String, dynamic> json) =>
      _$SwidDeclarationModifiersFromJson(json);

  factory SwidDeclarationModifiers.clone({
    required final SwidDeclarationModifiers declarationModifiers,
    final List<String>? ignoredTransforms,
    final List<String>? ignoredAnalyses,
    final List<StringTuple>? overridenTransforms,
    final bool? isAbstract,
    final bool? isGetter,
    final bool? isOperator,
    final bool? isSetter,
    final bool? isStatic,
    final bool? isSynthetic,
    final bool? isCovariant,
    final bool? isExplicitlyCovariant,
    final bool? hasAlwaysThrows,
    final bool? hasDeprecated,
    final bool? hasFactory,
    final bool? hasImplicitReturnType,
    final bool? hasIsTest,
    final bool? hasIsTestGroup,
    final bool? hasJS,
    final bool? hasLiteral,
    final bool? hasMustCallSuper,
    final bool? hasNonVirtual,
    final bool? hasOptionalTypeArgs,
    final bool? hasOverride,
    final bool? hasProtected,
    final bool? hasRequired,
    final bool? hasSealed,
    final bool? hasVisibleForTemplate,
    final bool? hasVisibleForTesting,
    final bool? isPublic,
  }) =>
      SwidDeclarationModifiers(
        ignoredTransforms:
            ignoredTransforms ?? declarationModifiers.ignoredTransforms,
        ignoredAnalyses:
            ignoredAnalyses ?? declarationModifiers.ignoredAnalyses,
        overridenTransforms: overridenTransforms ??
            declarationModifiers.overridenTransforms
                .map(
                  (x) => x,
                )
                .toList(),
        isAbstract: isAbstract ?? declarationModifiers.isAbstract,
        isGetter: isGetter ?? declarationModifiers.isGetter,
        isOperator: isOperator ?? declarationModifiers.isOperator,
        isSetter: isSetter ?? declarationModifiers.isSetter,
        isStatic: isStatic ?? declarationModifiers.isStatic,
        isSynthetic: isSynthetic ?? declarationModifiers.isSynthetic,
        isCovariant: isCovariant ?? declarationModifiers.isCovariant,
        isExplicitlyCovariant:
            isExplicitlyCovariant ?? declarationModifiers.isExplicitlyCovariant,
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
    final List<String> ignoredTransforms: const [],
    final List<String> ignoredAnalyses: const [],
    final List<StringTuple> overridenTransforms: const [],
    final bool isAbstract: false,
    final bool isGetter: false,
    final bool isOperator: false,
    final bool isSetter: false,
    final bool isStatic: false,
    final bool isSynthetic: false,
    final bool isCovariant: false,
    final bool isExplicitlyCovariant: false,
    final bool hasAlwaysThrows: false,
    final bool hasDeprecated: false,
    final bool hasFactory: false,
    final bool hasImplicitReturnType: false,
    final bool hasIsTest: false,
    final bool hasIsTestGroup: false,
    final bool hasJS: false,
    final bool hasLiteral: false,
    final bool hasMustCallSuper: false,
    final bool hasNonVirtual: false,
    final bool hasOptionalTypeArgs: false,
    final bool hasOverride: false,
    final bool hasProtected: false,
    final bool hasRequired: false,
    final bool hasSealed: false,
    final bool hasVisibleForTemplate: false,
    final bool hasVisibleForTesting: false,
    final bool isPublic: true,
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
        isCovariant: isCovariant,
        isExplicitlyCovariant: isExplicitlyCovariant,
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

  @override
  SwidDeclarationModifiers clone({
    final List<String>? ignoredTransforms,
    final List<String>? ignoredAnalyses,
    final List<StringTuple>? overridenTransforms,
    final bool? isAbstract,
    final bool? isGetter,
    final bool? isOperator,
    final bool? isSetter,
    final bool? isStatic,
    final bool? isSynthetic,
    final bool isCovariant: false,
    final bool isExplicitlyCovariant: false,
    final bool? hasAlwaysThrows,
    final bool? hasDeprecated,
    final bool? hasFactory,
    final bool? hasImplicitReturnType,
    final bool? hasIsTest,
    final bool? hasIsTestGroup,
    final bool? hasJS,
    final bool? hasLiteral,
    final bool? hasMustCallSuper,
    final bool? hasNonVirtual,
    final bool? hasOptionalTypeArgs,
    final bool? hasOverride,
    final bool? hasProtected,
    final bool? hasRequired,
    final bool? hasSealed,
    final bool? hasVisibleForTemplate,
    final bool? hasVisibleForTesting,
    final bool? isPublic,
  }) =>
      SwidDeclarationModifiers.clone(
        declarationModifiers: this,
        ignoredTransforms: ignoredTransforms,
        ignoredAnalyses: ignoredAnalyses,
        overridenTransforms: overridenTransforms,
        isAbstract: isAbstract,
        isGetter: isGetter,
        isOperator: isOperator,
        isSetter: isSetter,
        isStatic: isStatic,
        isSynthetic: isSynthetic,
        isCovariant: isCovariant,
        isExplicitlyCovariant: isExplicitlyCovariant,
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
}
