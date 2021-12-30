import 'package:analyzer/dart/ast/ast.dart';

import 'package:hydro_sdk/swid/frontend/dart/extractStaticConstFromSyntacticEntity.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstBinaryExpression.dart';

SwidStaticConstBinaryExpression
    swidStaticConstBinaryExpressionFromBinaryExpression({
  required final BinaryExpression binaryExpression,
  required final bool buildElements,
}) =>
        SwidStaticConstBinaryExpression(
          operator: binaryExpression.operator.value() as String,
          leftOperand: extractStaticConstFromSyntacticEntity(
            syntacticEntity: binaryExpression.leftOperand,
            buildElements: buildElements,
          ),
          rightOperand: extractStaticConstFromSyntacticEntity(
            syntacticEntity: binaryExpression.rightOperand,
            buildElements: buildElements,
          ),
        );
