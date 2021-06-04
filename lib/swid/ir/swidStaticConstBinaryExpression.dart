import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';

part 'swidStaticConstBinaryExpression.freezed.dart';
part 'swidStaticConstBinaryExpression.g.dart';

@freezed
abstract class SwidStaticConstBinaryExpression
    with _$SwidStaticConstBinaryExpression {
  const factory SwidStaticConstBinaryExpression({
    required String operator,
    required SwidStaticConst leftOperand,
    required SwidStaticConst rightOperand,
  }) = _$Data;

  factory SwidStaticConstBinaryExpression.fromJson(Map<String, dynamic> json) =>
      _$SwidStaticConstBinaryExpressionFromJson(json);
}
