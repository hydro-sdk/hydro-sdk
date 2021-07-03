import 'package:analyzer/dart/ast/ast.dart'
    show
        BinaryExpression,
        BooleanLiteral,
        DoubleLiteral,
        InstanceCreationExpression,
        IntegerLiteral,
        ListLiteral,
        PrefixExpression,
        PrefixedIdentifier,
        SimpleIdentifier,
        SimpleStringLiteral,
        StringLiteral;
import 'package:analyzer/dart/ast/syntactic_entity.dart' show SyntacticEntity;

T? narrowStaticConstSyntacticEntity<T>({
  required SyntacticEntity? syntacticEntity,
  required T Function(IntegerLiteral) onIntegerLiteral,
  required T Function(StringLiteral) onStringLiteral,
  required T Function(SimpleStringLiteral) onSimpleStringLiteral,
  required T Function(DoubleLiteral) onDoubleLiteral,
  required T Function(BooleanLiteral) onBooleanLiteral,
  required T Function(PrefixedIdentifier) onPrefixedIdentifier,
  required T Function(SimpleIdentifier) onSimpleIdentifier,
  required T Function(PrefixExpression) onPrefixExpression,
  required T Function(InstanceCreationExpression) onInstanceCreationExpression,
  required T Function(BinaryExpression) onBinaryExpression,
  required T Function(ListLiteral) onListLiteral,
}) =>
    syntacticEntity is InstanceCreationExpression
        ? onInstanceCreationExpression(syntacticEntity)
        : syntacticEntity is SimpleStringLiteral
            ? onSimpleStringLiteral(syntacticEntity)
            : syntacticEntity is StringLiteral
                ? onStringLiteral(syntacticEntity)
                : syntacticEntity is DoubleLiteral
                    ? onDoubleLiteral(syntacticEntity)
                    : syntacticEntity is BooleanLiteral
                        ? onBooleanLiteral(syntacticEntity)
                        : syntacticEntity is PrefixedIdentifier
                            ? onPrefixedIdentifier(syntacticEntity)
                            : syntacticEntity is PrefixExpression
                                ? onPrefixExpression(syntacticEntity)
                                : syntacticEntity is IntegerLiteral
                                    ? onIntegerLiteral(syntacticEntity)
                                    : syntacticEntity is BinaryExpression
                                        ? onBinaryExpression(syntacticEntity)
                                        : syntacticEntity is ListLiteral
                                            ? onListLiteral(syntacticEntity)
                                            : syntacticEntity
                                                    is SimpleIdentifier
                                                ? onSimpleIdentifier(
                                                    syntacticEntity)
                                                : null;
