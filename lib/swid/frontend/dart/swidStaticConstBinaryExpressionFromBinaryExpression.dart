import 'package:analyzer/dart/ast/ast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/frontend/dart/extractStaticConstFromSyntacticEntity.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstBinaryExpression.dart';

SwidStaticConstBinaryExpression
    swidStaticConstBinaryExpressionFromBinaryExpression(
            {@required BinaryExpression binaryExpression}) =>
        SwidStaticConstBinaryExpression(
          operator: binaryExpression.operator.value(),
          leftOperand: extractStaticConstFromSyntacticEntity(
              syntacticEntity: binaryExpression.leftOperand),
          rightOperand: extractStaticConstFromSyntacticEntity(
              syntacticEntity: binaryExpression.rightOperand),
        );
