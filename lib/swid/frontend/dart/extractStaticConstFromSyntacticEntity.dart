import 'package:analyzer/dart/ast/syntactic_entity.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidBooleanLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidDoubleLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstBinaryExpression.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldReference.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstPrefixedExpression.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstPrefixedIdentifier.dart';
import 'package:hydro_sdk/swid/ir/swidStringLiteral.dart';
import 'package:hydro_sdk/swid/frontend/dart/narrowStaticConstSyntacticEntity.dart';

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
        onPrefixedIdentifier: (val) => SwidStaticConst.fromSwidStaticConstPrefixedIdentifier(
            staticConstPrefixedIdentifier: SwidStaticConstPrefixedIdentifier.fromPrefixedIdentifier(prefixedIdentifier: val)),
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
