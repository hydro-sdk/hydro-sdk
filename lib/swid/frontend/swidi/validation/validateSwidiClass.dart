import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiClass.dart';
import 'package:hydro_sdk/swid/frontend/swidi/validation/swidiValidationError.dart';
import 'package:hydro_sdk/swid/frontend/swidi/validation/validTransformNames.dart';
import 'package:hydro_sdk/swid/frontend/swidi/validation/validateShortHandOverride.dart';
import 'package:hydro_sdk/swid/frontend/swidi/validation/validateSwidiClassMethod.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsAnalysisMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iJsonTransformable.dart';

part 'validateSwidiClass.freezed.dart';
part 'validateSwidiClass.g.dart';

@freezed
class SwidiClassValidationState
    with _$SwidiClassValidationState
    implements IJsonTransformable {
  const SwidiClassValidationState._();

  const factory SwidiClassValidationState.valid() =
      _$SwidiClassValidationStateValid;

  const factory SwidiClassValidationState.invalid({
    required final SwidiValidationError swidiValidationError,
  }) = _$SwidiClassValidationStateInvalid;

  factory SwidiClassValidationState.fromJson(Map<String, dynamic> json) =>
      _$SwidiClassValidationStateFromJson(json);

  @override
  SwidiClassValidationState fromJson(Map<String, dynamic> json) =>
      SwidiClassValidationState.fromJson(json);
}

@freezed
class ValidateSwidiClass
    with
        _$ValidateSwidiClass,
        HashKeyMixin<ValidateSwidiClass>,
        HashComparableMixin<ValidateSwidiClass>,
        SwarsAnalysisMixin<
            ValidateSwidiClass,
            $ValidateSwidiClassCopyWith<ValidateSwidiClass>,
            SwidiClassValidationState>,
        SwarsTermJsonTransformableResultMixin {
  ValidateSwidiClass._();

  factory ValidateSwidiClass({
    required final SwidiClass swidiClass,
  }) = _$ValidateSwidiClassCtor;

  @override
  String get cacheGroup => "validateSwidiClass";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidiClass.hashKey.hashableParts;
  }

  @override
  ValidateSwidiClass clone({
    final SwidiClass? swidiClass,
  }) =>
      ValidateSwidiClass(
        swidiClass: swidiClass ?? this.swidiClass.clone(),
      );

  @override
  SwidiClassValidationState termResultDeserializer(
          final Map<String, dynamic> json) =>
      SwidiClassValidationState.fromJson(json);

  @override
  ISwarsTermResult<SwidiClassValidationState> analyze({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromJsonTransformable(
        (({
          required final List<SwidiClassValidationState> aggregateValidations,
        }) =>
            aggregateValidations.firstWhereOrNull(
                      (x) => x.when(
                        valid: () => false,
                        invalid: (_) => true,
                      ),
                    ) !=
                    null
                ? aggregateValidations.firstWhere(
                    (x) => x.when(
                      valid: () => false,
                      invalid: (_) => true,
                    ),
                  )
                : const SwidiClassValidationState.valid())(
          aggregateValidations: [
            ...(swidiClass.methods.isNotEmpty
                ? swidiClass.methods
                    .map(
                      (x) => pipeline.reduceFromTerm(
                        ValidateSwidiClassMethod(
                          swidiFunctionDeclaration: x,
                        ),
                      ),
                    )
                    .reduce(
                      (value, element) => [
                        ...value,
                        ...element,
                      ],
                    )
                : []),
            ...pipeline.reduceFromTerm(
              ValidateShortHandOverride(
                swidiConst: swidiClass.shortHandOverride,
                validKeys: validClassShortHandOverrideKeys,
              ),
            )
          ],
        ),
      );
}
