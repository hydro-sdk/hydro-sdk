import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidDoubleLiteral.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsNonUniqueTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/unHashableMixin.dart';

part 'transformDoubleLiteralToTs.freezed.dart';

@freezed
class TransformDoubleLiteralToTs
    with
        _$TransformDoubleLiteralToTs,
        HashKeyMixin<TransformDoubleLiteralToTs>,
        HashComparableMixin<TransformDoubleLiteralToTs>,
        UnhashableMixin<TransformDoubleLiteralToTs>,
        SwarsNonUniqueTermMixin<
            TransformDoubleLiteralToTs,
            $TransformDoubleLiteralToTsCopyWith<TransformDoubleLiteralToTs>,
            String>,
        SwarsTransformMixin<
            TransformDoubleLiteralToTs,
            $TransformDoubleLiteralToTsCopyWith<TransformDoubleLiteralToTs>,
            String>,
        SwarsTermStringResultMixin {
  TransformDoubleLiteralToTs._();

  factory TransformDoubleLiteralToTs({
    required final SwidDoubleLiteral swidDoubleLiteral,
  }) = _$TransformDoubleLiteralToTsCtor;

  @override
  TransformDoubleLiteralToTs clone({
    final SwidDoubleLiteral? swidDoubleLiteral,
  }) =>
      TransformDoubleLiteralToTs(
        swidDoubleLiteral: swidDoubleLiteral ?? this.swidDoubleLiteral,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        swidDoubleLiteral.value,
      );
}
