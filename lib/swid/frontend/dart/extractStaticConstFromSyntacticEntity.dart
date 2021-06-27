import 'package:analyzer/dart/ast/syntactic_entity.dart';

import 'package:hydro_sdk/swid/frontend/dart/narrowStaticConstSyntacticEntity.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidDoubleLiteralFromDoubleLiteral.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidIntegerLiteralFromIntegerLiteral.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidStaticConstFunctionInvocationFromInstanceCreationExpression.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidStaticConstPrefixedIdentifierFromPrefixedIdentifier.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidStringLiteralFromSimpleStringLiteral.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidBooleanLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstBinaryExpression.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldReference.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstPrefixedExpression.dart';
import 'package:hydro_sdk/swid/ir/swidStringLiteral.dart';

SwidStaticConst extractStaticConstFromSyntacticEntity({
  required SyntacticEntity syntacticEntity,
}) =>
    narrowStaticConstSyntacticEntity(
      syntacticEntity: syntacticEntity,
      onIntegerLiteral: (val) => SwidStaticConst.fromSwidIntegerLiteral(
          swidIntegerLiteral:
              swidIntegerLiteralFromIntegerLiteral(integerLiteral: val)),
      onStringLiteral: (val) => SwidStaticConst.fromSwidStringLiteral(
          swidStringLiteral: SwidStringLiteral(value: val.stringValue!)),
      onBooleanLiteral: (val) => SwidStaticConst.fromSwidBooleanLiteral(
          swidBooleanLiteral: SwidBooleanLiteral(value: val.value.toString())),
      onSimpleStringLiteral: (val) => SwidStaticConst.fromSwidStringLiteral(
          swidStringLiteral: swidStringLiteralFromSimpleStringLiteral(
              simpleStringLiteral: val)),
      onDoubleLiteral: (val) => SwidStaticConst.fromDoubleLiteral(
          swidDoubleLiteral:
              swidDoubleLiteralFromDoubleLiteral(doubleLiteral: val)),
      onPrefixedIdentifier: (val) =>
          SwidStaticConst.fromSwidStaticConstPrefixedIdentifier(
        staticConstPrefixedIdentifier:
            swidStaticConstPrefixedIdentifierFromPrefixedIdentifier(
                prefixedIdentifier: val),
      ),
      onSimpleIdentifier: (val) =>
          SwidStaticConst.fromSwidStaticConstFieldReference(
        swidStaticConstFieldReference:
            SwidStaticConstFieldReference(name: val.name),
      ),
      onPrefixExpression: (val) =>
          SwidStaticConst.fromSwidStaticConstPrefixedExpression(
        swidStaticConstPrefixedExpression: SwidStaticConstPrefixedExpression(
          prefix: val.operator.lexeme,
          expression: extractStaticConstFromSyntacticEntity(
            syntacticEntity: val.operand,
          ),
        ),
      ),
      onInstanceCreationExpression: (val) =>
          SwidStaticConst.fromSwidStaticConstFunctionInvocation(
        staticConstFunctionInvocation:
            swidStaticConstFunctionInvocationFromInstanceCreationExpression(
                instanceCreationExpression: val),
      ),
      onBinaryExpression: (val) =>
          SwidStaticConst.fromSwidStaticConstBinaryExpression(
        swidStaticConstBinaryExpression: SwidStaticConstBinaryExpression(
          leftOperand: extractStaticConstFromSyntacticEntity(
              syntacticEntity: val.leftOperand),
          operator: val.operator.value() as String,
          rightOperand: extractStaticConstFromSyntacticEntity(
            syntacticEntity: val.rightOperand,
          ),
        ),
      ),
    ) ??
    dartUnknownConst;
