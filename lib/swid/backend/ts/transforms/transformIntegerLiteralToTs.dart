import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsNonUniqueTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/unHashableMixin.dart';

part 'transformIntegerLiteralToTs.freezed.dart';

@freezed
class TransformIntegerLiteralToTs
    with
        _$TransformIntegerLiteralToTs,
        HashKeyMixin<TransformIntegerLiteralToTs>,
        HashComparableMixin<TransformIntegerLiteralToTs>,
        UnhashableMixin<TransformIntegerLiteralToTs>,
        SwarsNonUniqueTermMixin<
            TransformIntegerLiteralToTs,
            $TransformIntegerLiteralToTsCopyWith<TransformIntegerLiteralToTs>,
            String>,
        SwarsTransformMixin<
            TransformIntegerLiteralToTs,
            $TransformIntegerLiteralToTsCopyWith<TransformIntegerLiteralToTs>,
            String>,
        SwarsTermStringResultMixin {
  TransformIntegerLiteralToTs._();

  factory TransformIntegerLiteralToTs({
    required final SwidIntegerLiteral swidIntegerLiteral,
  }) = _$TransformIntegerLiteralToTsCtor;

  @override
  TransformIntegerLiteralToTs clone({
    final SwidIntegerLiteral? swidIntegerLiteral,
  }) =>
      TransformIntegerLiteralToTs(
        swidIntegerLiteral: swidIntegerLiteral ?? this.swidIntegerLiteral,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        swidIntegerLiteral.value,
      );
}
