import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiType.dart';
import 'package:hydro_sdk/swid/frontend/swidi/validation/validTransformNames.dart';
import 'package:hydro_sdk/swid/frontend/swidi/validation/validateShortHandOverride.dart';
import 'package:hydro_sdk/swid/frontend/swidi/validation/validateSwidiClass.dart';
import 'package:hydro_sdk/swid/frontend/swidi/validation/validateSwidiType.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsAnalysisMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableListResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
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
            List<SwidiClassValidationState>>,
        SwarsTermJsonTransformableListResultMixin {
  ValidateSwidiClassMethod._();

  factory ValidateSwidiClassMethod({
    required final SwidiFunctionDeclaration swidiFunctionDeclaration,
  }) = _$ValidateSwidiClassMethodCtor;

  @override
  String get cacheGroup => "validateSwidiClassMethod";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidiFunctionDeclaration.hashKey.hashableParts;
  }

  @override
  ValidateSwidiClassMethod clone({
    final SwidiFunctionDeclaration? swidiFunctionDeclaration,
  }) =>
      ValidateSwidiClassMethod(
        swidiFunctionDeclaration:
            swidiFunctionDeclaration ?? this.swidiFunctionDeclaration.clone(),
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
        [
          ...pipeline.reduceFromTerm(
            ValidateSwidiType(
              swidiType: swidiFunctionDeclaration.returnType,
            ),
          ),
          ...([
            ...(swidiFunctionDeclaration.positionalParameters.isNotEmpty
                ? swidiFunctionDeclaration.positionalParameters
                    .map(
                      (x) => pipeline.reduceFromTerm(
                        ValidateSwidiType(
                          swidiType: x.declaration.type,
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
                          swidiType: x.declaration.type,
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
                          swidiType: x.declaration.type,
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
                          swidiType: SwidiType.fromSwidiInterface(
                            swidiInterface: x.bound,
                          ),
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
                swidiConst: swidiFunctionDeclaration.shortHandOverride,
                validKeys: [
                  ...validMethodShortHandOverrideKeys,
                  isGetterName,
                ],
              ),
            ),
          ])
        ],
      );
}
