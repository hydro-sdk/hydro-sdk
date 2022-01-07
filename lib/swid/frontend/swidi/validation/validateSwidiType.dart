import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiType.dart';
import 'package:hydro_sdk/swid/frontend/swidi/validation/swidiValidationError.dart';
import 'package:hydro_sdk/swid/frontend/swidi/validation/validAnnotationArguments.dart';
import 'package:hydro_sdk/swid/frontend/swidi/validation/validAnnotationNames.dart';
import 'package:hydro_sdk/swid/frontend/swidi/validation/validTransformNames.dart';
import 'package:hydro_sdk/swid/frontend/swidi/validation/validateSwidiClass.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsAnalysisMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableListResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'validateSwidiType.freezed.dart';

@freezed
class ValidateSwidiType
    with
        _$ValidateSwidiType,
        HashKeyMixin<ValidateSwidiType>,
        HashComparableMixin<ValidateSwidiType>,
        SwarsAnalysisMixin<
            ValidateSwidiType,
            $ValidateSwidiTypeCopyWith<ValidateSwidiType>,
            List<SwidiClassValidationState>>,
        SwarsTermJsonTransformableListResultMixin {
  ValidateSwidiType._();

  factory ValidateSwidiType({
    required final SwidiType swidiType,
  }) = _$ValidateSwidiTypeCtor;

  @override
  String get cacheGroup => "validateSwidiType";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidiType.hashKey.hashableParts;
  }

  @override
  ValidateSwidiType clone({
    final SwidiType? swidiType,
  }) =>
      ValidateSwidiType(
        swidiType: swidiType ?? this.swidiType,
      );

  @override
  SwidiClassValidationState termResultDeserializer(
          final Map<String, dynamic> json) =>
      SwidiClassValidationState.fromJson(json);

  @override
  ISwarsTermResult<List<SwidiClassValidationState>> analyze({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromList(
        swidiType.when(
          fromSwidiInterface: (swidiInterface) => swidiInterface
                  .annotations.isNotEmpty
              ? swidiInterface.annotations
                  .map(
                    (x) => x.value.when(
                      fromSwidiEmptyConst: (_) =>
                          const SwidiClassValidationState.invalid(
                        swidiValidationError: SwidiValidationError.e1,
                      ),
                      fromSwidiConstNumber: (_) =>
                          const SwidiClassValidationState.invalid(
                        swidiValidationError: SwidiValidationError.e2,
                      ),
                      fromSwidiConstString: (_) =>
                          const SwidiClassValidationState.invalid(
                        swidiValidationError: SwidiValidationError.e3,
                      ),
                      fromSwidiConstFunctionInvocation: (val) =>
                          validAnnotationNames.firstWhereOrNull(
                                      (x) => x == val.value) ==
                                  null
                              ? const SwidiClassValidationState.invalid(
                                  swidiValidationError:
                                      SwidiValidationError.e18,
                                )
                              : val.namedParameters.isNotEmpty
                                  ? const SwidiClassValidationState.invalid(
                                      swidiValidationError:
                                          SwidiValidationError.e4,
                                    )
                                  : val.positionalParameters.isEmpty
                                      ? const SwidiClassValidationState.invalid(
                                          swidiValidationError:
                                              SwidiValidationError.e5,
                                        )
                                      : val.positionalParameters.length > 1
                                          ? const SwidiClassValidationState
                                              .invalid(
                                              swidiValidationError:
                                                  SwidiValidationError.e6,
                                            )
                                          : val.positionalParameters.first.when(
                                              fromSwidiEmptyConst: (_) =>
                                                  const SwidiClassValidationState
                                                      .invalid(
                                                swidiValidationError:
                                                    SwidiValidationError.e5,
                                              ),
                                              fromSwidiConstNumber: (_) =>
                                                  const SwidiClassValidationState
                                                      .invalid(
                                                swidiValidationError:
                                                    SwidiValidationError.e7,
                                              ),
                                              fromSwidiConstString: (val) => [
                                                        ...validMethodShortHandOverrideKeys,
                                                        ...validAnnotationArguments
                                                      ].firstWhereOrNull((x) =>
                                                          x == val.value) ==
                                                      null
                                                  ? const SwidiClassValidationState
                                                      .invalid(
                                                      swidiValidationError:
                                                          SwidiValidationError
                                                              .e19,
                                                    )
                                                  : const SwidiClassValidationState
                                                      .valid(),
                                              fromSwidiConstFunctionInvocation:
                                                  (_) =>
                                                      const SwidiClassValidationState
                                                          .invalid(
                                                swidiValidationError:
                                                    SwidiValidationError.e8,
                                              ),
                                              fromSwidiConstMap: (_) =>
                                                  const SwidiClassValidationState
                                                      .invalid(
                                                swidiValidationError:
                                                    SwidiValidationError.e9,
                                              ),
                                              fromSwidiConstBoolean: (_) =>
                                                  const SwidiClassValidationState
                                                      .invalid(
                                                swidiValidationError:
                                                    SwidiValidationError.e21,
                                              ),
                                            ),
                      fromSwidiConstMap: (_) =>
                          const SwidiClassValidationState.invalid(
                        swidiValidationError: SwidiValidationError.e10,
                      ),
                      fromSwidiConstBoolean: (_) =>
                          const SwidiClassValidationState.invalid(
                        swidiValidationError: SwidiValidationError.e20,
                      ),
                    ),
                  )
                  .toList()
              : [
                  const SwidiClassValidationState.valid(),
                ],
          fromSwidiFunctionType: (_) => [
            const SwidiClassValidationState.valid(),
          ],
        ),
      );
}
