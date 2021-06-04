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

import 'package:collection/collection.dart' show IterableExtension;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/frontend/dart/swidDoubleLiteralFromDoubleLiteral.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidIntegerLiteralFromIntegerLiteral.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidStaticConstBinaryExpressionFromBinaryExpression.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidStaticConstFunctionInvocationFromInstanceCreationExpression.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidStringLiteralFromSimpleStringLiteral.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldDeclaration.dart';

SwidStaticConstFieldDeclaration
    swidStaticConstFieldDeclarationFromVariableDeclarationList(
        {required VariableDeclarationList variableDeclarationList}) {
  assert(variableDeclarationList.isConst);
  assert(!variableDeclarationList.isLate);
  VariableDeclaration declaration = variableDeclarationList.childEntities
      .firstWhere((x) => x is VariableDeclaration) as VariableDeclaration;
  assert(declaration != null);
  assert(declaration.declaredElement is ConstFieldElementImpl);
  assert(declaration.declaredElement!.isConst);
  assert(declaration.declaredElement!.isStatic);
  assert(!declaration.declaredElement!.isLate);
  return SwidStaticConstFieldDeclaration(
    name: declaration.declaredElement!.name!,
    value: declaration.childEntities.firstWhereOrNull(
              (x) => x is InstanceCreationExpression,
            ) !=
            null
        ? SwidStaticConst.fromSwidStaticConstFunctionInvocation(
            staticConstFunctionInvocation:
                swidStaticConstFunctionInvocationFromInstanceCreationExpression(
                    instanceCreationExpression:
                        declaration.childEntities.firstWhereOrNull(
            (x) => x is InstanceCreationExpression,
          ) as InstanceCreationExpression))
        : declaration.childEntities.firstWhereOrNull(
                  (x) => x is SimpleStringLiteral,
                ) !=
                null
            ? SwidStaticConst.fromSwidStringLiteral(
                swidStringLiteral: swidStringLiteralFromSimpleStringLiteral(
                    simpleStringLiteral: declaration.childEntities.firstWhereOrNull(
                (x) => x is SimpleStringLiteral,
              ) as SimpleStringLiteral))
            : declaration.childEntities.firstWhereOrNull(
                      (x) => x is DoubleLiteral,
                    ) !=
                    null
                ? SwidStaticConst.fromDoubleLiteral(
                    swidDoubleLiteral: swidDoubleLiteralFromDoubleLiteral(
                      doubleLiteral: declaration.childEntities.firstWhereOrNull(
                          (x) => x is DoubleLiteral) as DoubleLiteral,
                    ),
                  )
                : declaration.childEntities.firstWhereOrNull(
                          (x) => x is BinaryExpression,
                        ) !=
                        null
                    ? SwidStaticConst.fromSwidStaticConstBinaryExpression(
                        swidStaticConstBinaryExpression:
                            swidStaticConstBinaryExpressionFromBinaryExpression(
                                binaryExpression:
                                    declaration.childEntities.firstWhereOrNull(
                        (x) => x is BinaryExpression,
                      ) as BinaryExpression))
                    : declaration.childEntities.firstWhereOrNull(
                                (x) => x is IntegerLiteral) !=
                            null
                        ? SwidStaticConst.fromSwidIntegerLiteral(
                            swidIntegerLiteral:
                                swidIntegerLiteralFromIntegerLiteral(
                                    integerLiteral: declaration.childEntities
                                        .firstWhereOrNull((x) => x is IntegerLiteral) as IntegerLiteral))
                        : null,
  );
}
