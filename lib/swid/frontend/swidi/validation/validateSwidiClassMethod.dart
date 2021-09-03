import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/validation/swidiValidationError.dart';
import 'package:hydro_sdk/swid/frontend/swidi/validation/validateSwidiClass.dart';
import 'package:hydro_sdk/swid/frontend/swidi/validation/validateSwidiType.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsAnalysisMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'validateSwidiClassMethod.freezed.dart';

@freezed
class ValidateSwidiClassMethod
    with
        _$ValidateSwidiClassMethod,
        HashKeyMixin<ValidateSwidiClassMethod>,
        HashComparableMixin<ValidateSwidiClassMethod>,
        SwarsAnalysisMixin<
            ValidateSwidiClassMethod,
            $ValidateSwidiClassMethodCopyWith<ValidateSwidiClassMethod>,
            List<SwidiClassValidationState>> {
  ValidateSwidiClassMethod._();

  factory ValidateSwidiClassMethod({
    required final SwidiFunctionDeclaration swidiFunctionDeclaration,
  }) = _$ValidateSwidiClassMethodCtor;

  @override
  String get cacheGroup => "validateSwidiClassMethod";

  @override
  List<int> get hashableParts => [
        ...swidiFunctionDeclaration.hashableParts,
      ];

  @override
  ValidateSwidiClassMethod clone({
    final SwidiFunctionDeclaration? swidiFunctionDeclaration,
  }) =>
      ValidateSwidiClassMethod(
        swidiFunctionDeclaration:
            swidiFunctionDeclaration ?? this.swidiFunctionDeclaration.clone(),
      );

  @override
  List<SwidiClassValidationState> analyze({
    required final ISwarsPipeline pipeline,
  }) =>
      [
        ...pipeline.reduceFromTerm(
          ValidateSwidiType(
            swidiInterface: swidiFunctionDeclaration.returnType,
          ),
        ),
        ...([
          ...(swidiFunctionDeclaration.positionalParameters.isNotEmpty
              ? swidiFunctionDeclaration.positionalParameters
                  .map(
                    (x) => pipeline.reduceFromTerm(
                      ValidateSwidiType(
                        swidiInterface: x.declaration.type,
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
          ...(swidiFunctionDeclaration.optionalParameters.isNotEmpty
              ? swidiFunctionDeclaration.optionalParameters
                  .map(
                    (x) => pipeline.reduceFromTerm(
                      ValidateSwidiType(
                        swidiInterface: x.declaration.type,
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
          ...(swidiFunctionDeclaration.namedParameters.isNotEmpty
              ? swidiFunctionDeclaration.namedParameters
                  .map(
                    (x) => pipeline.reduceFromTerm(
                      ValidateSwidiType(
                        swidiInterface: x.declaration.type,
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
          ...(swidiFunctionDeclaration.typeFormals.isNotEmpty
              ? swidiFunctionDeclaration.typeFormals
                  .map(
                    (x) => pipeline.reduceFromTerm(
                      ValidateSwidiType(
                        swidiInterface: x.bound,
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
                        validTransformNames
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
        ])
      ];
}
