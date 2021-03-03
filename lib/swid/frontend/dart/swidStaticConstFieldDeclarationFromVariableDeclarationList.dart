import 'package:analyzer/dart/ast/ast.dart'
    show
        VariableDeclarationList,
        VariableDeclaration,
        InstanceCreationExpression,
        SimpleStringLiteral,
        DoubleLiteral,
        BinaryExpression,
        IntegerLiteral;
import 'package:analyzer/src/dart/element/element.dart'
    show ConstFieldElementImpl;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidIntegerLiteralFromIntegerLiteral.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidStaticConstBinaryExpressionFromBinaryExpression.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidStaticConstFunctionInvocationFromInstanceCreationExpression.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/frontend/dart/swidStringLiteralFromSimpleStringLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidDoubleLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldDeclaration.dart';

SwidStaticConstFieldDeclaration
    swidStaticConstFieldDeclarationFromVariableDeclarationList(
        {@required VariableDeclarationList variableDeclarationList}) {
  assert(variableDeclarationList.isConst);
  assert(!variableDeclarationList.isLate);
  VariableDeclaration declaration = variableDeclarationList.childEntities
      .firstWhere((x) => x is VariableDeclaration);
  assert(declaration != null);
  assert(declaration.declaredElement is ConstFieldElementImpl);
  assert(declaration.declaredElement.isConst);
  assert(declaration.declaredElement.isStatic);
  assert(!declaration.declaredElement.isLate);
  return SwidStaticConstFieldDeclaration(
    name: declaration.declaredElement.name,
    value: declaration.childEntities.firstWhere(
              (x) => x is InstanceCreationExpression,
              orElse: () => null,
            ) !=
            null
        ? SwidStaticConst.fromSwidStaticConstFunctionInvocation(
            staticConstFunctionInvocation:
                swidStaticConstFunctionInvocationFromInstanceCreationExpression(
                    instanceCreationExpression:
                        declaration.childEntities.firstWhere(
            (x) => x is InstanceCreationExpression,
            orElse: () => null,
          )))
        : declaration.childEntities.firstWhere(
                  (x) => x is SimpleStringLiteral,
                  orElse: () => null,
                ) !=
                null
            ? SwidStaticConst.fromSwidStringLiteral(
                swidStringLiteral: swidStringLiteralFromSimpleStringLiteral(
                    simpleStringLiteral: declaration.childEntities.firstWhere(
                (x) => x is SimpleStringLiteral,
                orElse: () => null,
              )))
            : declaration.childEntities.firstWhere(
                      (x) => x is DoubleLiteral,
                      orElse: () => null,
                    ) !=
                    null
                ? SwidStaticConst.fromDoubleLiteral(
                    swidDoubleLiteral: SwidDoubleLiteral.fromDoubleLiteral(
                      doubleLiteral: declaration.childEntities.firstWhere(
                          (x) => x is DoubleLiteral,
                          orElse: () => null),
                    ),
                  )
                : declaration.childEntities.firstWhere(
                          (x) => x is BinaryExpression,
                          orElse: () => null,
                        ) !=
                        null
                    ? SwidStaticConst.fromSwidStaticConstBinaryExpression(
                        swidStaticConstBinaryExpression:
                            swidStaticConstBinaryExpressionFromBinaryExpression(
                                binaryExpression:
                                    declaration.childEntities.firstWhere(
                        (x) => x is BinaryExpression,
                        orElse: () => null,
                      )))
                    : declaration.childEntities.firstWhere(
                                (x) => x is IntegerLiteral,
                                orElse: () => null) !=
                            null
                        ? SwidStaticConst.fromSwidIntegerLiteral(
                            swidIntegerLiteral:
                                swidIntegerLiteralFromIntegerLiteral(
                                    integerLiteral: declaration.childEntities
                                        .firstWhere((x) => x is IntegerLiteral,
                                            orElse: () => null)))
                        : null,
  );
}
