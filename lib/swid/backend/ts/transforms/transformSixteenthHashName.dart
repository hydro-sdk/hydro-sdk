import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/transforms/sixteenthHashName.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsEphemeralTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'transformSixteenthHashName.freezed.dart';

@freezed
class TransformSixteenthHashName
    with
        _$TransformSixteenthHashName,
        HashKeyMixin<TransformSixteenthHashName>,
        HashComparableMixin<TransformSixteenthHashName>,
        SwarsTransformMixin<
            TransformSixteenthHashName,
            $TransformSixteenthHashNameCopyWith<TransformSixteenthHashName>,
            String>,
        SwarsEphemeralTermMixin,
        SwarsTermStringResultMixin {
  TransformSixteenthHashName._();

  factory TransformSixteenthHashName({
    required final SwidType swidType,
  }) = _$TransformSixteenthHashNameCtor;

  @override
  String get cacheGroup => "transformSixteenthHashName";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidType.hashKey.hashableParts;
  }

  @override
  TransformSixteenthHashName clone({
    final SwidType? swidType,
  }) =>
      TransformSixteenthHashName(
        swidType: swidType ?? this.swidType,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromValue(
        swidType.when(
          fromSwidInterface: (val) => [
            "_",
            pipeline.reduceFromTerm(
              SixteenthHashName(
                str: val.originalPackagePath,
              ),
            ),
            val.name,
          ].join(),
          fromSwidClass: (val) => val.name,
          fromSwidDefaultFormalParameter: (val) => val.name,
          fromSwidFunctionType: (val) => val.name,
        ),
      );
}
