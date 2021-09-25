import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidStringLiteral.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsNonUniqueTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/unHashableMixin.dart';

part 'transformStringLiteralToTs.freezed.dart';

@freezed
class TransformStringLiteralToTs
    with
        _$TransformStringLiteralToTs,
        HashKeyMixin<TransformStringLiteralToTs>,
        HashComparableMixin<TransformStringLiteralToTs>,
        UnhashableMixin<TransformStringLiteralToTs>,
        SwarsNonUniqueTermMixin<
            TransformStringLiteralToTs,
            $TransformStringLiteralToTsCopyWith<TransformStringLiteralToTs>,
            String>,
        SwarsTransformMixin<
            TransformStringLiteralToTs,
            $TransformStringLiteralToTsCopyWith<TransformStringLiteralToTs>,
            String>,
        SwarsTermStringResultMixin {
  TransformStringLiteralToTs._();

  factory TransformStringLiteralToTs({
    required final SwidStringLiteral swidStringLiteral,
  }) = _$TransformStringLiteralToTsCtor;

  @override
  TransformStringLiteralToTs clone({
    final SwidStringLiteral? swidStringLiteral,
  }) =>
      TransformStringLiteralToTs(
        swidStringLiteral: swidStringLiteral ?? this.swidStringLiteral,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        "\"${swidStringLiteral.value}\"",
      );
}
