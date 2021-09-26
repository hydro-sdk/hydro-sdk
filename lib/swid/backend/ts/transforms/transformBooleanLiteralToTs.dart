import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidBooleanLiteral.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsNonUniqueTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/unHashableMixin.dart';

part 'transformBooleanLiteralToTs.freezed.dart';

@freezed
class TransformBooleanLiteralToTs
    with
        _$TransformBooleanLiteralToTs,
        HashKeyMixin<TransformBooleanLiteralToTs>,
        HashComparableMixin<TransformBooleanLiteralToTs>,
        UnhashableMixin<TransformBooleanLiteralToTs>,
        SwarsNonUniqueTermMixin<
            TransformBooleanLiteralToTs,
            $TransformBooleanLiteralToTsCopyWith<TransformBooleanLiteralToTs>,
            String>,
        SwarsTransformMixin<
            TransformBooleanLiteralToTs,
            $TransformBooleanLiteralToTsCopyWith<TransformBooleanLiteralToTs>,
            String>,
        SwarsTermStringResultMixin {
  TransformBooleanLiteralToTs._();

  factory TransformBooleanLiteralToTs({
    required final SwidBooleanLiteral swidBooleanLiteral,
  }) = _$TransformBooleanLiteralToTsCtor;

  @override
  TransformBooleanLiteralToTs clone({
    final SwidBooleanLiteral? swidBooleanLiteral,
  }) =>
      TransformBooleanLiteralToTs(
        swidBooleanLiteral: swidBooleanLiteral ?? this.swidBooleanLiteral,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        swidBooleanLiteral.value,
      );
}
