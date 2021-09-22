import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsNonUniqueTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/unHashableMixin.dart';

part 'transformTypeFormalToTs.freezed.dart';

@freezed
class TransformTypeFormalToTs
    with
        _$TransformTypeFormalToTs,
        HashKeyMixin<TransformTypeFormalToTs>,
        HashComparableMixin<TransformTypeFormalToTs>,
        UnhashableMixin<TransformTypeFormalToTs>,
        SwarsNonUniqueTermMixin<TransformTypeFormalToTs,
            $TransformTypeFormalToTsCopyWith<TransformTypeFormalToTs>, String>,
        SwarsTransformMixin<TransformTypeFormalToTs,
            $TransformTypeFormalToTsCopyWith<TransformTypeFormalToTs>, String>,
        SwarsTermStringResultMixin {
  TransformTypeFormalToTs._();

  factory TransformTypeFormalToTs({
    required final SwidTypeFormal swidTypeFormal,
  }) = _$TransformTypeFormalToTsCtor;

  @override
  TransformTypeFormalToTs clone({
    final SwidTypeFormal? swidTypeFormal,
  }) =>
      TransformTypeFormalToTs(
        swidTypeFormal: swidTypeFormal ?? this.swidTypeFormal,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        swidTypeFormal.value.name,
      );
}
