import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';

part 'swidStaticConstPrefixedExpression.freezed.dart';
part 'swidStaticConstPrefixedExpression.g.dart';

@freezed
class SwidStaticConstPrefixedExpression
    with _$SwidStaticConstPrefixedExpression {
  const factory SwidStaticConstPrefixedExpression({
    required final String prefix,
    required final SwidStaticConst expression,
  }) = _$Data;

  factory SwidStaticConstPrefixedExpression.fromJson(
          Map<String, dynamic> json) =>
      _$SwidStaticConstPrefixedExpressionFromJson(json);

  factory SwidStaticConstPrefixedExpression.clone({
    required final SwidStaticConstPrefixedExpression
        swidStaticConstPrefixedExpression,
    String? prefix,
    SwidStaticConst? expression,
  }) =>
      SwidStaticConstPrefixedExpression(
        prefix: prefix ?? swidStaticConstPrefixedExpression.prefix,
        expression: expression ??
            SwidStaticConst.clone(
              swidStaticConst: swidStaticConstPrefixedExpression.expression,
            ),
      );
}
