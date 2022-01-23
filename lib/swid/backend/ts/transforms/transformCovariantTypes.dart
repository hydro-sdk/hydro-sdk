import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/covarianceTransformKind.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformCovariantTypesInClass.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformCovariantTypesInDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformCovariantTypesInFunction.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformCovariantTypesInInterface.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/irTermMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'transformCovariantTypes.freezed.dart';

@freezed
class TransformCovariantTypes
    with
        _$TransformCovariantTypes,
        HashKeyMixin<TransformCovariantTypes>,
        HashComparableMixin<TransformCovariantTypes>,
        SwarsTransformMixin<
            TransformCovariantTypes,
            $TransformCovariantTypesCopyWith<TransformCovariantTypes>,
            SwidType>,
        SwarsTermJsonTransformableResultMixin,
        IrTermMixin {
  TransformCovariantTypes._();

  factory TransformCovariantTypes({
    required final SwidType swidType,
    required final CovarianceTransformKind covarianceTransformKind,
  }) = _$TransformCovariantTypesCtor;

  @override
  String get cacheGroup => "transformCovariantTypes";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidType.hashKey.hashableParts;
    yield [
      covarianceTransformKind.index,
    ];
  }

  @override
  TransformCovariantTypes clone({
    final SwidType? swidType,
    final CovarianceTransformKind? covarianceTransformKind,
  }) =>
      TransformCovariantTypes(
        swidType: swidType ?? this.swidType,
        covarianceTransformKind:
            covarianceTransformKind ?? this.covarianceTransformKind,
      );

  @override
  ISwarsTermResult<SwidType> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromJsonTransformable(
        swidType.when(
          fromSwidInterface: (val) => SwidType.fromSwidInterface(
            swidInterface: pipeline.reduceFromTerm(
              TransformCovariantTypesInInterface(
                swidInterface: val,
                covarianceTransformKind: covarianceTransformKind,
              ),
            ),
          ),
          fromSwidClass: (val) => SwidType.fromSwidClass(
            swidClass: pipeline.reduceFromTerm(
              TransformCovariantTypesInClass(
                swidClass: val,
                covarianceTransformKind: covarianceTransformKind,
              ),
            ),
          ),
          fromSwidDefaultFormalParameter: (val) =>
              SwidType.fromSwidDefaultFormalParameter(
            swidDefaultFormalParameter: pipeline.reduceFromTerm(
              TransformCovariantTypesInDefaultFormalParameter(
                swidDefaultFormalParameter: val,
                covarianceTransformKind: covarianceTransformKind,
              ),
            ),
          ),
          fromSwidFunctionType: (val) => SwidType.fromSwidFunctionType(
            swidFunctionType: pipeline.reduceFromTerm(
              TransformCovariantTypesInFunction(
                swidFunctionType: val,
                covarianceTransformKind: covarianceTransformKind,
              ),
            ),
          ),
        ),
      );
}
