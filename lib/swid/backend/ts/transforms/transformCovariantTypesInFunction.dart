import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/covarianceTransformKind.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformCovariantTypes.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformCovariantTypesInDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/util/swarsTermSwidFunctionTypeResultMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'transformCovariantTypesInFunction.freezed.dart';

@freezed
class TransformCovariantTypesInFunction
    with
        _$TransformCovariantTypesInFunction,
        HashKeyMixin<TransformCovariantTypesInFunction>,
        HashComparableMixin<TransformCovariantTypesInFunction>,
        SwarsTransformMixin<
            TransformCovariantTypesInFunction,
            $TransformCovariantTypesInFunctionCopyWith<
                TransformCovariantTypesInFunction>,
            SwidFunctionType>,
        SwarsTermJsonTransformableResultMixin,
        SwarsTermSwidFunctionTypeResultMixin {
  TransformCovariantTypesInFunction._();

  factory TransformCovariantTypesInFunction({
    required final SwidFunctionType swidFunctionType,
    required final CovarianceTransformKind covarianceTransformKind,
  }) = _$TransformCovariantTypesInFunctionCtor;

  @override
  String get cacheGroup => "transformCovariantTypesInFunction";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidFunctionType.hashKey.hashableParts;
    yield [
      covarianceTransformKind.index,
    ];
  }

  @override
  TransformCovariantTypesInFunction clone({
    final SwidFunctionType? swidFunctionType,
    final CovarianceTransformKind? covarianceTransformKind,
  }) =>
      TransformCovariantTypesInFunction(
        swidFunctionType: swidFunctionType ?? this.swidFunctionType,
        covarianceTransformKind:
            covarianceTransformKind ?? this.covarianceTransformKind,
      );

  @override
  ISwarsTermResult<SwidFunctionType> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromJsonTransformable(
        swidFunctionType.clone(
          namedParameterTypes: Map.fromEntries(
            swidFunctionType.namedParameterTypes.entries.map(
              (x) => MapEntry(
                x.key,
                pipeline.reduceFromTerm(
                  TransformCovariantTypes(
                    swidType: x.value,
                    covarianceTransformKind: covarianceTransformKind,
                  ),
                ),
              ),
            ),
          ),
          namedDefaults: Map.fromEntries(
            swidFunctionType.namedDefaults.entries.map(
              (x) => MapEntry(
                x.key,
                pipeline.reduceFromTerm(
                  TransformCovariantTypesInDefaultFormalParameter(
                    swidDefaultFormalParameter: x.value,
                    covarianceTransformKind: covarianceTransformKind,
                  ),
                ),
              ),
            ),
          ),
          normalParameterTypes: swidFunctionType.normalParameterTypes
              .map(
                (x) => pipeline.reduceFromTerm(
                  TransformCovariantTypes(
                    swidType: x,
                    covarianceTransformKind: covarianceTransformKind,
                  ),
                ),
              )
              .toList(),
          optionalParameterTypes: swidFunctionType.optionalParameterTypes
              .map(
                (x) => pipeline.reduceFromTerm(
                  TransformCovariantTypes(
                    swidType: x,
                    covarianceTransformKind: covarianceTransformKind,
                  ),
                ),
              )
              .toList(),
        ),
      );
}
