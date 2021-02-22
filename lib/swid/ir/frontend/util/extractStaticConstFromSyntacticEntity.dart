import 'package:analyzer/dart/ast/syntactic_entity.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidBooleanLiteral.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidDoubleLiteral.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidIntegerLiteral.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidStaticConstBinaryExpression.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidStaticConstFieldReference.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidStaticConstPrefixedExpression.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidStaticConstPrefixedIdentifier.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidStringLiteral.dart';
import 'package:hydro_sdk/swid/ir/frontend/util/narrowStaticConstSyntacticEntity.dart';

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
