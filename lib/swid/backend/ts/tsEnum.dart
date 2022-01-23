import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformEnumToTs.dart';
import 'package:hydro_sdk/swid/ir/swidEnum.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'tsEnum.freezed.dart';

@freezed
class TsEnum
    with
        _$TsEnum,
        HashKeyMixin<TsEnum>,
        HashComparableMixin<TsEnum>,
        SwarsTransformMixin<TsEnum, $TsEnumCopyWith<TsEnum>, String>,
        SwarsTermStringResultMixin {
  TsEnum._();

  factory TsEnum({
    required final SwidEnum swidEnum,
  }) = _$TsEnumCtor;

  @override
  String get cacheGroup => "tsEnum";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidEnum.hashKey.hashableParts;
  }

  @override
  TsEnum clone({
    final SwidEnum? swidEnum,
  }) =>
      TsEnum(
        swidEnum: swidEnum ?? this.swidEnum,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        pipeline.reduceFromTerm(
          TransformEnumToTs(
            swidEnum: swidEnum,
          ),
        ),
      );
}
