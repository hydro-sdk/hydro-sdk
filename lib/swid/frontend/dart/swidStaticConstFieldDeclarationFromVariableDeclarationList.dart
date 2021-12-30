import 'package:analyzer/dart/ast/ast.dart'
    show
        VariableDeclarationList,
        VariableDeclaration,
        InstanceCreationExpression,
        SimpleStringLiteral,
        DoubleLiteral,
        BinaryExpression,
        SimpleIdentifier,
        IntegerLiteral;

import 'package:analyzer/dart/element/type.dart' show InterfaceType;
import 'package:collection/collection.dart' show IterableExtension;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/dart/extractStaticConstFromSyntacticEntity.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidClassFromInterfaceType.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidDoubleLiteralFromDoubleLiteral.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidIntegerLiteralFromIntegerLiteral.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidStaticConstBinaryExpressionFromBinaryExpression.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidStaticConstFunctionInvocationFromInstanceCreationExpression.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidStringLiteralFromSimpleStringLiteral.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstIdentifier.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';

SwidStaticConstFieldDeclaration
    swidStaticConstFieldDeclarationFromVariableDeclarationList({
  required final VariableDeclarationList variableDeclarationList,
  required final bool buildElements,
}) {
  assert(variableDeclarationList.isConst);
  assert(!variableDeclarationList.isLate);
  VariableDeclaration declaration =
      variableDeclarationList.childEntities.firstWhere(
    (x) => x is VariableDeclaration,
  ) as VariableDeclaration;
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
              ) as InstanceCreationExpression,
              buildElements: buildElements,
            ),
          )
        : declaration.childEntities.firstWhereOrNull(
                  (x) => x is SimpleStringLiteral,
                ) !=
                null
            ? SwidStaticConst.fromSwidStringLiteral(
                swidStringLiteral: swidStringLiteralFromSimpleStringLiteral(
                  simpleStringLiteral:
                      declaration.childEntities.firstWhereOrNull(
                    (x) => x is SimpleStringLiteral,
                  ) as SimpleStringLiteral,
                ),
              )
            : declaration.childEntities.firstWhereOrNull(
                      (x) => x is DoubleLiteral,
                    ) !=
                    null
                ? SwidStaticConst.fromDoubleLiteral(
                    swidDoubleLiteral: swidDoubleLiteralFromDoubleLiteral(
                      doubleLiteral: declaration.childEntities
                              .firstWhereOrNull((x) => x is DoubleLiteral)
                          as DoubleLiteral,
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
                          ) as BinaryExpression,
                          buildElements: buildElements,
                        ),
                      )
                    : declaration.childEntities.firstWhereOrNull(
                              (x) => x is IntegerLiteral,
                            ) !=
                            null
                        ? SwidStaticConst.fromSwidIntegerLiteral(
                            swidIntegerLiteral:
                                swidIntegerLiteralFromIntegerLiteral(
                              integerLiteral:
                                  declaration.childEntities.firstWhereOrNull(
                                (x) => x is IntegerLiteral,
                              ) as IntegerLiteral,
                            ),
                          )
                        : declaration.childEntities.firstWhereOrNull(
                                  (x) =>
                                      x is SimpleIdentifier &&
                                      !x.inDeclarationContext(),
                                ) !=
                                null
                            ? (({
                                required final SimpleIdentifier?
                                    simpleIdentifier,
                              }) =>
                                simpleIdentifier?.unParenthesized.staticType
                                        is InterfaceType
                                    ? SwidStaticConst
                                        .fromSwidStaticConstIdentifier(
                                        staticConstIdentifier:
                                            SwidStaticConstIdentifier(
                                          identifier: simpleIdentifier!.name,
                                          enclosingType: SwidType.fromSwidClass(
                                            swidClass:
                                                swidClassFromInterfaceType(
                                              buildElements: buildElements,
                                              interfaceType: simpleIdentifier
                                                  .unParenthesized
                                                  .staticType as InterfaceType,
                                            ),
                                          ),
                                        ),
                                      )
                                    : dartUnknownConst)(
                                simpleIdentifier:
                                    declaration.childEntities.firstWhereOrNull(
                                  (x) =>
                                      x is SimpleIdentifier &&
                                      !x.inDeclarationContext(),
                                ) as SimpleIdentifier?,
                              )
                            : (({
                                required final List<SwidStaticConst>
                                    childStaticConsts,
                              }) =>
                                childStaticConsts.isNotEmpty
                                    ? childStaticConsts.first
                                    : dartUnknownConst)(
                                childStaticConsts: <SwidStaticConst>[
                                  ...declaration.childEntities
                                      .map(
                                        (x) =>
                                            extractStaticConstFromSyntacticEntity(
                                          syntacticEntity: x,
                                          buildElements: buildElements,
                                        ),
                                      )
                                      .toList()
                                        ..removeWhere(
                                          (x) => x == dartUnknownConst,
                                        ),
                                ],
                              ),
  );
}
