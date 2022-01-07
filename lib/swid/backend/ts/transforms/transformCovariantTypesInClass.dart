import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/covarianceTransformKind.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformCovariantTypesInFunction.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/util/swarsTermSwidClassResultMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'transformCovariantTypesInClass.freezed.dart';

@freezed
class TransformCovariantTypesInClass
    with
        _$TransformCovariantTypesInClass,
        HashKeyMixin<TransformCovariantTypesInClass>,
        HashComparableMixin<TransformCovariantTypesInClass>,
        SwarsTransformMixin<
            TransformCovariantTypesInClass,
            $TransformCovariantTypesInClassCopyWith<
                TransformCovariantTypesInClass>,
            SwidClass>,
        SwarsTermJsonTransformableResultMixin,
        SwarsTermSwidClassResultMixin {
  TransformCovariantTypesInClass._();

  factory TransformCovariantTypesInClass({
    required final SwidClass swidClass,
    required final CovarianceTransformKind covarianceTransformKind,
  }) = _$TransformCovariantTypesInClassCtor;

  @override
  String get cacheGroup => "transformCovariantTypesInClass";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidClass.hashKey.hashableParts;
    yield [
      covarianceTransformKind.index,
    ];
  }

  @override
  TransformCovariantTypesInClass clone({
    final SwidClass? swidClass,
    final CovarianceTransformKind? covarianceTransformKind,
  }) =>
      TransformCovariantTypesInClass(
        swidClass: swidClass ?? this.swidClass,
        covarianceTransformKind:
            covarianceTransformKind ?? this.covarianceTransformKind,
      );

  @override
  ISwarsTermResult<SwidClass> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromJsonTransformable(
        swidClass.clone(
          methods: swidClass.methods
              .map(
                (x) => pipeline.reduceFromTerm(
                  TransformCovariantTypesInFunction(
                    swidFunctionType: x,
                    covarianceTransformKind: covarianceTransformKind,
                  ),
                ),
              )
              .toList(),
        ),
      );
}
