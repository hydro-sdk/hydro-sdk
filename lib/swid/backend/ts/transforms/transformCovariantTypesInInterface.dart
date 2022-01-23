import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/constPrimitives.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/covarianceTransformKind.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/util/swarsTermSwidInterfaceResultMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'transformCovariantTypesInInterface.freezed.dart';

@freezed
class TransformCovariantTypesInInterface
    with
        _$TransformCovariantTypesInInterface,
        HashKeyMixin<TransformCovariantTypesInInterface>,
        HashComparableMixin<TransformCovariantTypesInInterface>,
        SwarsTransformMixin<
            TransformCovariantTypesInInterface,
            $TransformCovariantTypesInInterfaceCopyWith<
                TransformCovariantTypesInInterface>,
            SwidInterface>,
        SwarsTermJsonTransformableResultMixin,
        SwarsTermSwidInterfaceResultMixin {
  TransformCovariantTypesInInterface._();

  factory TransformCovariantTypesInInterface({
    required final SwidInterface swidInterface,
    required final CovarianceTransformKind covarianceTransformKind,
  }) = _$TransformCovariantTypesInInterfaceCtor;

  @override
  String get cacheGroup => "transformCovariantTypesInInterface";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidInterface.hashKey.hashableParts;
    yield [
      covarianceTransformKind.index,
    ];
  }

  @override
  TransformCovariantTypesInInterface clone({
    final SwidInterface? swidInterface,
    final CovarianceTransformKind? covarianceTransformKind,
  }) =>
      TransformCovariantTypesInInterface(
        swidInterface: swidInterface ?? this.swidInterface,
        covarianceTransformKind:
            covarianceTransformKind ?? this.covarianceTransformKind,
      );

  @override
  ISwarsTermResult<SwidInterface> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromJsonTransformable(
        covarianceTransformKind == CovarianceTransformKind.kIgnore
            ? swidInterface
            : (swidInterface.declarationModifiers.isCovariant ||
                    swidInterface.declarationModifiers.isExplicitlyCovariant)
                ? covarianceTransformKind == CovarianceTransformKind.kUnknown
                    ? typescriptUnknownInterface
                    : covarianceTransformKind == CovarianceTransformKind.kAny
                        ? typescriptAnyInterface
                        : swidInterface
                : swidInterface,
      );
}
