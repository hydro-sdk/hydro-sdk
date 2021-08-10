import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';

part 'swidStaticConstBinaryExpression.freezed.dart';
part 'swidStaticConstBinaryExpression.g.dart';

@freezed
class SwidStaticConstBinaryExpression with _$SwidStaticConstBinaryExpression {
  const factory SwidStaticConstBinaryExpression({
    required final String operator,
    required final SwidStaticConst leftOperand,
    required final SwidStaticConst rightOperand,
  }) = _$Data;

  factory SwidStaticConstBinaryExpression.fromJson(Map<String, dynamic> json) =>
      _$SwidStaticConstBinaryExpressionFromJson(json);

  factory SwidStaticConstBinaryExpression.clone({
    required final SwidStaticConstBinaryExpression
        swidStaticConstBinaryExpression,
    String? operator,
    SwidStaticConst? leftOperand,
    SwidStaticConst? rightOperand,
  }) =>
      SwidStaticConstBinaryExpression(
        operator: operator ?? swidStaticConstBinaryExpression.operator,
        leftOperand: SwidStaticConst.clone(
          swidStaticConst:
              leftOperand ?? swidStaticConstBinaryExpression.leftOperand,
        ),
        rightOperand: SwidStaticConst.clone(
          swidStaticConst:
              rightOperand ?? swidStaticConstBinaryExpression.rightOperand,
        ),
      );
}
