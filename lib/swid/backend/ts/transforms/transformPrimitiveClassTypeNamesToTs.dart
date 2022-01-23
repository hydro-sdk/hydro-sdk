import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformPrimitiveNamesToTs.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'transformPrimitiveClassTypeNamesToTs.freezed.dart';

@freezed
class TransformPrimitiveClassTypeNamesToTs
    with
        _$TransformPrimitiveClassTypeNamesToTs,
        HashKeyMixin<TransformPrimitiveClassTypeNamesToTs>,
        HashComparableMixin<TransformPrimitiveClassTypeNamesToTs>,
        SwarsTransformMixin<
            TransformPrimitiveClassTypeNamesToTs,
            $TransformPrimitiveClassTypeNamesToTsCopyWith<
                TransformPrimitiveClassTypeNamesToTs>,
            SwidClass>,
        SwarsTermJsonTransformableResultMixin {
  TransformPrimitiveClassTypeNamesToTs._();

  factory TransformPrimitiveClassTypeNamesToTs({
    required final SwidClass swidClass,
  }) = _$TransformPrimitiveClassTypeNamesToTsCtor;

  @override
  String get cacheGroup => "transformPrimitiveClassTypeNamesToTs";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidClass.hashKey.hashableParts;
  }

  @override
  TransformPrimitiveClassTypeNamesToTs clone({
    final SwidClass? swidClass,
  }) =>
      TransformPrimitiveClassTypeNamesToTs(
        swidClass: swidClass ?? this.swidClass,
      );

  @override
  SwidClass termResultDeserializer(final Map<String, dynamic> json) =>
      SwidClass.fromJson(json);

  @override
  ISwarsTermResult<SwidClass> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromJsonTransformable(
        pipeline
            .reduceFromTerm(
              TransformPrimitiveNamesToTs(
                swidType: SwidType.fromSwidClass(
                  swidClass: swidClass,
                ),
              ),
            )
            .when(
              fromSwidInterface: (_) => dartUnknownClass,
              fromSwidClass: (val) => val,
              fromSwidDefaultFormalParameter: (_) => dartUnknownClass,
              fromSwidFunctionType: (_) => dartUnknownClass,
            ),
      );
}
