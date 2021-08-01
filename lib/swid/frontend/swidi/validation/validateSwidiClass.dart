import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiClass.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiInterface.dart';
import 'package:hydro_sdk/swid/frontend/swidi/validation/swidiValidationError.dart';

part 'validateSwidiClass.freezed.dart';

@freezed
class SwidiClassValidationState with _$SwidiClassValidationState {
  const SwidiClassValidationState._();

  const factory SwidiClassValidationState.valid() =
      _$SwidiClassValidationStateValid;

  const factory SwidiClassValidationState.invalid({
    required SwidiValidationError swidiValidationError,
  }) = _$SwidiClassValidationStateInvalid;
}

const validMethodShortHandOverrideKeys = [
  "tsClassMethodDeclaration",
];

List<SwidiClassValidationState> validateSwidiType({
  required SwidiInterface swidiInterface,
}) =>
    swidiInterface.annotations.isNotEmpty
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
                fromSwidiConstFunctionInvocation: (val) => val
                        .namedParameters.isNotEmpty
                    ? const SwidiClassValidationState.invalid(
                        swidiValidationError: SwidiValidationError.e4,
                      )
                    : val.positionalParameters.isEmpty
                        ? const SwidiClassValidationState.invalid(
                            swidiValidationError: SwidiValidationError.e5,
                          )
                        : val.positionalParameters.length > 1
                            ? const SwidiClassValidationState.invalid(
                                swidiValidationError: SwidiValidationError.e6,
                              )
                            : val.positionalParameters.first.when(
                                fromSwidiEmptyConst: (_) =>
                                    const SwidiClassValidationState.invalid(
                                  swidiValidationError: SwidiValidationError.e5,
                                ),
                                fromSwidiConstNumber: (_) =>
                                    const SwidiClassValidationState.invalid(
                                  swidiValidationError: SwidiValidationError.e7,
                                ),
                                fromSwidiConstString: (_) =>
                                    const SwidiClassValidationState.valid(),
                                fromSwidiConstFunctionInvocation: (_) =>
                                    const SwidiClassValidationState.invalid(
                                  swidiValidationError: SwidiValidationError.e8,
                                ),
                                fromSwidiConstMap: (_) =>
                                    const SwidiClassValidationState.invalid(
                                  swidiValidationError: SwidiValidationError.e9,
                                ),
                              ),
                fromSwidiConstMap: (_) =>
                    const SwidiClassValidationState.invalid(
                  swidiValidationError: SwidiValidationError.e10,
                ),
              ),
            )
            .toList()
        : [
            const SwidiClassValidationState.valid(),
          ];

List<SwidiClassValidationState> validateSwidiClassMethod({
  required SwidiFunctionDeclaration swidiFunctionDeclaration,
}) =>
    [
      ...validateSwidiType(
        swidiInterface: swidiFunctionDeclaration.returnType,
      ),
      ...([
        ...(swidiFunctionDeclaration.positionalParameters.isNotEmpty
            ? swidiFunctionDeclaration.positionalParameters
                .map(
                  (x) => validateSwidiType(
                    swidiInterface: x.declaration.type,
                  ),
                )
                .reduce(
                  (value, element) => [
                    ...value,
                    ...element,
                  ],
                )
            : []),
        ...(swidiFunctionDeclaration.optionalParameters.isNotEmpty
            ? swidiFunctionDeclaration.optionalParameters
                .map(
                  (x) => validateSwidiType(
                    swidiInterface: x.declaration.type,
                  ),
                )
                .reduce(
                  (value, element) => [
                    ...value,
                    ...element,
                  ],
                )
            : []),
        ...(swidiFunctionDeclaration.namedParameters.isNotEmpty
            ? swidiFunctionDeclaration.namedParameters
                .map(
                  (x) => validateSwidiType(
                    swidiInterface: x.declaration.type,
                  ),
                )
                .reduce(
                  (value, element) => [
                    ...value,
                    ...element,
                  ],
                )
            : []),
        ...(swidiFunctionDeclaration.typeFormals.isNotEmpty
            ? swidiFunctionDeclaration.typeFormals
                .map(
                  (x) => validateSwidiType(
                    swidiInterface: x.bound,
                  ),
                )
                .reduce(
                  (value, element) => [
                    ...value,
                    ...element,
                  ],
                )
            : []),
        ...swidiFunctionDeclaration.shortHandOverride.when(
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
          fromSwidiConstMap: (val) => val.entries
              .map(
                (x) => x.item1.when(
                  fromSwidiEmptyConst: (_) => [
                    const SwidiClassValidationState.valid(),
                  ],
                  fromSwidiConstNumber: (_) => [
                    const SwidiClassValidationState.invalid(
                      swidiValidationError: SwidiValidationError.e14,
                    ),
                  ],
                  fromSwidiConstString: (val) => [
                    validMethodShortHandOverrideKeys
                                .firstWhereOrNull((x) => x == val.value) !=
                            null
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
              )
              .reduce(
                (value, element) => [
                  ...value,
                  ...element,
                ],
              ),
        ),
      ])
    ];

SwidiClassValidationState validateSwidiClass({
  required SwidiClass swidiClass,
}) =>
    swidiClass.methods.isNotEmpty
        ? (({
            required List<SwidiClassValidationState> aggregateValidations,
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
            aggregateValidations: swidiClass.methods
                .map(
                  (x) => validateSwidiClassMethod(
                    swidiFunctionDeclaration: x,
                  ),
                )
                .reduce(
                  (value, element) => [
                    ...value,
                    ...element,
                  ],
                ),
          )
        : const SwidiClassValidationState.valid();
