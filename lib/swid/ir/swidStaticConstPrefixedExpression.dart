import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';

part 'swidStaticConstPrefixedExpression.freezed.dart';
part 'swidStaticConstPrefixedExpression.g.dart';

@freezed
class SwidStaticConstPrefixedExpression
    with _$SwidStaticConstPrefixedExpression {
  const factory SwidStaticConstPrefixedExpression({
    required String prefix,
    required SwidStaticConst expression,
  }) = _$Data;

  factory SwidStaticConstPrefixedExpression.fromJson(
          Map<String, dynamic> json) =>
      _$SwidStaticConstPrefixedExpressionFromJson(json);
}
