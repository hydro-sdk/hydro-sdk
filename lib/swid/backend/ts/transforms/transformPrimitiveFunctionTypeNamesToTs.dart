import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformPrimitiveNamesToTs.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/util/cloneSwidType.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'transformPrimitiveFunctionTypeNamesToTs.freezed.dart';

@freezed
class TransformPrimitiveFunctionTypeNamesToTs
    with
        _$TransformPrimitiveFunctionTypeNamesToTs,
        HashKeyMixin<TransformPrimitiveFunctionTypeNamesToTs>,
        HashComparableMixin<TransformPrimitiveFunctionTypeNamesToTs>,
        SwarsTransformMixin<
            TransformPrimitiveFunctionTypeNamesToTs,
            $TransformPrimitiveFunctionTypeNamesToTsCopyWith<
                TransformPrimitiveFunctionTypeNamesToTs>,
            SwidFunctionType>,
        SwarsTermJsonTransformableResultMixin {
  TransformPrimitiveFunctionTypeNamesToTs._();

  factory TransformPrimitiveFunctionTypeNamesToTs({
    required final SwidFunctionType swidFunctionType,
  }) = _$TransformPrimitiveFunctionTypeNamesToTsCtor;

  @override
  String get cacheGroup => "transformPrimitiveFunctionTypeNamesToTs";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidFunctionType.hashKey.hashableParts;
  }

  @override
  TransformPrimitiveFunctionTypeNamesToTs clone({
    final SwidFunctionType? swidFunctionType,
  }) =>
      TransformPrimitiveFunctionTypeNamesToTs(
        swidFunctionType: swidFunctionType ?? this.swidFunctionType,
      );

  @override
  SwidFunctionType termResultDeserializer(final Map<String, dynamic> json) =>
      SwidFunctionType.fromJson(json);

  @override
  ISwarsTermResult<SwidFunctionType> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromJsonTransformable(
        SwidFunctionType.clone(
          swidFunctionType: swidFunctionType,
          normalParameterTypes: List.from(
            swidFunctionType.normalParameterTypes.map(
              (x) => cloneSwidType(
                swidType: pipeline.reduceFromTerm(
                  TransformPrimitiveNamesToTs(
                    swidType: x,
                  ),
                ),
              ),
            ),
          ),
          optionalParameterTypes: List.from(
            swidFunctionType.optionalParameterTypes.map(
              (x) => cloneSwidType(
                swidType: pipeline.reduceFromTerm(
                  TransformPrimitiveNamesToTs(
                    swidType: x,
                  ),
                ),
              ),
            ),
          ),
          namedParameterTypes: Map.from(
            swidFunctionType.namedParameterTypes.map(
              (k, x) => MapEntry(
                k,
                cloneSwidType(
                  swidType: pipeline.reduceFromTerm(
                    TransformPrimitiveNamesToTs(
                      swidType: x,
                    ),
                  ),
                ),
              ),
            ),
          ),
          returnType: pipeline.reduceFromTerm(
            TransformPrimitiveNamesToTs(
              swidType: swidFunctionType.returnType,
            ),
          ),
        ),
      );
}
