import 'package:analyzer/dart/ast/ast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/frontend/dart/extractStaticConstFromSyntacticEntity.dart';

part 'swidStaticConstBinaryExpression.freezed.dart';
part 'swidStaticConstBinaryExpression.g.dart';

@freezed
abstract class SwidStaticConstBinaryExpression
    with _$SwidStaticConstBinaryExpression {
  const factory SwidStaticConstBinaryExpression({
    @required String operator,
    @required SwidStaticConst leftOperand,
    @required SwidStaticConst rightOperand,
  }) = _$Data;

  factory SwidStaticConstBinaryExpression.fromJson(Map<String, dynamic> json) =>
      _$SwidStaticConstBinaryExpressionFromJson(json);

  factory SwidStaticConstBinaryExpression.fromBinaryExpression(
          {@required BinaryExpression binaryExpression}) =>
      SwidStaticConstBinaryExpression(
        operator: binaryExpression.operator.value(),
        leftOperand: extractStaticConstFromSyntacticEntity(
            syntacticEntity: binaryExpression.leftOperand),
        rightOperand: extractStaticConstFromSyntacticEntity(
            syntacticEntity: binaryExpression.rightOperand),
      );
}
