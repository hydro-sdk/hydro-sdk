import 'package:analyzer/dart/ast/syntactic_entity.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/narrowStaticConstSyntacticEntity.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidBooleanLiteral.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidDoubleLiteral.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConstBinaryExpression.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConstFieldReference.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConstPrefixedExpression.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidStringLiteral.dart';

SwidStaticConst extractStaticConstFromSyntacticEntity({@required SyntacticEntity syntacticEntity}) =>
    narrowStaticConstSyntacticEntity(
        syntacticEntity: syntacticEntity,
        onIntegerLiteral: (val) => SwidStaticConst.fromSwidIntegerLiteral(
            swidIntegerLiteral:
                SwidIntegerLiteral.fromIntegerLiteral(integerLiteral: val)),
        onStringLiteral: (val) => SwidStaticConst.fromSwidStringLiteral(
            swidStringLiteral: SwidStringLiteral(value: val.stringValue)),
        onBooleanLiteral: (val) => SwidStaticConst.fromSwidBooleanLiteral(
            swidBooleanLiteral:
                SwidBooleanLiteral(value: val.value.toString())),
        onSimpleStringLiteral: (val) => SwidStaticConst.fromSwidStringLiteral(
            swidStringLiteral: SwidStringLiteral.fromSimpleStringLiteral(
                simpleStringLiteral: val)),
        onDoubleLiteral: (val) => SwidStaticConst.fromDoubleLiteral(
            swidDoubleLiteral:
                SwidDoubleLiteral.fromDoubleLiteral(doubleLiteral: val)),
        onPrefixedIdentifier: (val) => SwidStaticConst.fromSwidStaticConstFieldReference(
            swidStaticConstFieldReference: SwidStaticConstFieldReference(name: val.name)),
        onSimpleIdentifier: (val) => SwidStaticConst.fromSwidStaticConstFieldReference(swidStaticConstFieldReference: SwidStaticConstFieldReference(name: val.name)),
        onPrefixExpression: (val) => SwidStaticConst.fromSwidStaticConstPrefixedExpression(
                swidStaticConstPrefixedExpression: SwidStaticConstPrefixedExpression(
              prefix: val.operator.lexeme,
              expression: extractStaticConstFromSyntacticEntity(
                  syntacticEntity: val.operand),
            )),
        onInstanceCreationExpression: (val) => SwidStaticConst.fromSwidStaticConstFunctionInvocation(
              staticConstFunctionInvocation: SwidStaticConstFunctionInvocation
                  .fromInstanceCreationExpression(
                      instanceCreationExpression: val),
            ),
        onBinaryExpression: (val) => SwidStaticConst.fromSwidStaticConstBinaryExpression(
                swidStaticConstBinaryExpression: SwidStaticConstBinaryExpression(
              leftOperand: extractStaticConstFromSyntacticEntity(
                  syntacticEntity: val.leftOperand),
              operator: val.operator.value(),
              rightOperand: extractStaticConstFromSyntacticEntity(
                  syntacticEntity: val.rightOperand),
            )));
