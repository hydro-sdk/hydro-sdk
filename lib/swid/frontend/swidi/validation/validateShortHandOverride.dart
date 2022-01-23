import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/validation/swidiValidationError.dart';
import 'package:hydro_sdk/swid/frontend/swidi/validation/validateSwidiClass.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsAnalysisMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableListResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'validateShortHandOverride.freezed.dart';

@freezed
class ValidateShortHandOverride
    with
        _$ValidateShortHandOverride,
        HashKeyMixin<ValidateShortHandOverride>,
        HashComparableMixin<ValidateShortHandOverride>,
        SwarsAnalysisMixin<
            ValidateShortHandOverride,
            $ValidateShortHandOverrideCopyWith<ValidateShortHandOverride>,
            List<SwidiClassValidationState>>,
        SwarsTermJsonTransformableListResultMixin {
  ValidateShortHandOverride._();

  factory ValidateShortHandOverride({
    required final SwidiConst swidiConst,
    required final List<String> validKeys,
  }) = _$ValidateShortHandOverrideCtor;

  @override
  String get cacheGroup => "validateShortHandOverride";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidiConst.hashKey.hashableParts;
    yield* validKeys.hashableParts;
  }

  @override
  ValidateShortHandOverride clone({
    final SwidiConst? swidiConst,
    final List<String>? validKeys,
  }) =>
      ValidateShortHandOverride(
        swidiConst: swidiConst ?? this.swidiConst,
        validKeys: validKeys ?? this.validKeys,
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
        swidiConst.when(
          fromSwidiEmptyConst: (_) => [
            const SwidiClassValidationState.valid(),
          ],
          fromSwidiConstNumber: (_) => [
            const SwidiClassValidationState.invalid(
              swidiValidationError: SwidiValidationError.e11,
            ),
          ],
          fromSwidiConstString: (_) => [
            const SwidiClassValidationState.invalid(
              swidiValidationError: SwidiValidationError.e12,
            ),
          ],
          fromSwidiConstFunctionInvocation: (_) => [
            const SwidiClassValidationState.invalid(
              swidiValidationError: SwidiValidationError.e13,
            ),
          ],
          fromSwidiConstBoolean: (_) => [
            const SwidiClassValidationState.invalid(
              swidiValidationError: SwidiValidationError.e22,
            ),
          ],
          fromSwidiConstMap: (val) => val.entries
              .map(
                (x) => [
                  ...x.item1.when(
                    fromSwidiEmptyConst: (_) => [
                      const SwidiClassValidationState.valid(),
                    ],
                    fromSwidiConstNumber: (_) => [
                      const SwidiClassValidationState.invalid(
                        swidiValidationError: SwidiValidationError.e14,
                      ),
                    ],
                    fromSwidiConstBoolean: (_) => [
                      const SwidiClassValidationState.invalid(
                        swidiValidationError: SwidiValidationError.e23,
                      ),
                    ],
                    fromSwidiConstString: (val) => [
                      validKeys.firstWhereOrNull((x) => x == val.value) != null
                          ? const SwidiClassValidationState.valid()
                          : const SwidiClassValidationState.invalid(
                              swidiValidationError: SwidiValidationError.e17,
                            )
                    ],
                    fromSwidiConstFunctionInvocation: (_) => [
                      const SwidiClassValidationState.invalid(
                        swidiValidationError: SwidiValidationError.e15,
                      ),
                    ],
                    fromSwidiConstMap: (_) => [
                      const SwidiClassValidationState.invalid(
                        swidiValidationError: SwidiValidationError.e16,
                      ),
                    ],
                  ),
                  ...x.item2.when(
                    fromSwidiEmptyConst: (_) => [
                      const SwidiClassValidationState.valid(),
                    ],
                    fromSwidiConstNumber: (_) => [
                      const SwidiClassValidationState.invalid(
                        swidiValidationError: SwidiValidationError.e24,
                      )
                    ],
                    fromSwidiConstString: (_) => [
                      const SwidiClassValidationState.valid(),
                    ],
                    fromSwidiConstFunctionInvocation: (_) => [
                      const SwidiClassValidationState.invalid(
                        swidiValidationError: SwidiValidationError.e25,
                      )
                    ],
                    fromSwidiConstMap: (_) => [
                      const SwidiClassValidationState.invalid(
                        swidiValidationError: SwidiValidationError.e26,
                      )
                    ],
                    fromSwidiConstBoolean: (_) => [
                      const SwidiClassValidationState.valid(),
                    ],
                  ),
                ],
              )
              .reduce(
                (value, element) => [
                  ...value,
                  ...element,
                ],
              ),
        ),
      );
}
