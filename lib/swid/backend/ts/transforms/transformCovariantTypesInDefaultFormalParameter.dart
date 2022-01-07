import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/covarianceTransformKind.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformCovariantTypes.dart';
import 'package:hydro_sdk/swid/ir/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/util/swarsTermSwidDefaultFormalParameterMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'transformCovariantTypesInDefaultFormalParameter.freezed.dart';

@freezed
class TransformCovariantTypesInDefaultFormalParameter
    with
        _$TransformCovariantTypesInDefaultFormalParameter,
        HashKeyMixin<TransformCovariantTypesInDefaultFormalParameter>,
        HashComparableMixin<TransformCovariantTypesInDefaultFormalParameter>,
        SwarsTransformMixin<
            TransformCovariantTypesInDefaultFormalParameter,
            $TransformCovariantTypesInDefaultFormalParameterCopyWith<
                TransformCovariantTypesInDefaultFormalParameter>,
            SwidDefaultFormalParameter>,
        SwarsTermJsonTransformableResultMixin,
        SwarsTermSwidDefaultFormalParameterResultMixin {
  TransformCovariantTypesInDefaultFormalParameter._();

  factory TransformCovariantTypesInDefaultFormalParameter({
    required final SwidDefaultFormalParameter swidDefaultFormalParameter,
    required final CovarianceTransformKind covarianceTransformKind,
  }) = _$TransformCovariantTypesInDefaultFormalParameterCtor;

  @override
  String get cacheGroup => "transformCovariantTypesInDefaultFormalParameter";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidDefaultFormalParameter.hashKey.hashableParts;
    yield [
      covarianceTransformKind.index,
    ];
  }

  @override
  TransformCovariantTypesInDefaultFormalParameter clone({
    final SwidDefaultFormalParameter? swidDefaultFormalParameter,
    final CovarianceTransformKind? covarianceTransformKind,
  }) =>
      TransformCovariantTypesInDefaultFormalParameter(
        swidDefaultFormalParameter:
            swidDefaultFormalParameter ?? this.swidDefaultFormalParameter,
        covarianceTransformKind:
            covarianceTransformKind ?? this.covarianceTransformKind,
      );

  @override
  ISwarsTermResult<SwidDefaultFormalParameter> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromJsonTransformable(
        swidDefaultFormalParameter.clone(
          staticType: pipeline.reduceFromTerm(
            TransformCovariantTypes(
              swidType: swidDefaultFormalParameter.staticType,
              covarianceTransformKind: covarianceTransformKind,
            ),
          ),
        ),
      );
}
