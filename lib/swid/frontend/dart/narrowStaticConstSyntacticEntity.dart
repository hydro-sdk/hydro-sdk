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
        SetOrMapLiteral,
        MapLiteralEntry,
        StringLiteral;

import 'package:analyzer/dart/ast/syntactic_entity.dart' show SyntacticEntity;

T? narrowStaticConstSyntacticEntity<T>({
  required final SyntacticEntity? syntacticEntity,
  required final T Function(IntegerLiteral) onIntegerLiteral,
  required final T Function(StringLiteral) onStringLiteral,
  required final T Function(SimpleStringLiteral) onSimpleStringLiteral,
  required final T Function(DoubleLiteral) onDoubleLiteral,
  required final T Function(BooleanLiteral) onBooleanLiteral,
  required final T Function(PrefixedIdentifier) onPrefixedIdentifier,
  required final T Function(SimpleIdentifier) onSimpleIdentifier,
  required final T Function(PrefixExpression) onPrefixExpression,
  required final T Function(InstanceCreationExpression)
      onInstanceCreationExpression,
  required final T Function(BinaryExpression) onBinaryExpression,
  required final T Function(ListLiteral) onListLiteral,
  required final T Function(SetOrMapLiteral) onSetOrMapLiteral,
  required final T Function(MapLiteralEntry) onMapLiteralEntry,
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
                                                : syntacticEntity
                                                        is SetOrMapLiteral
                                                    ? onSetOrMapLiteral(
                                                        syntacticEntity)
                                                    : syntacticEntity
                                                            is MapLiteralEntry
                                                        ? onMapLiteralEntry(
                                                            syntacticEntity)
                                                        : null;
