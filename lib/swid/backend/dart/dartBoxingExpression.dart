import 'package:code_builder/code_builder.dart' show DartEmitter, Expression;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/dart/dartBoxEnumReference.dart';
import 'package:hydro_sdk/swid/backend/dart/dartBoxObjectReference.dart';
import 'package:hydro_sdk/swid/backend/dart/util/codeKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/narrowSwidInterfaceByReferenceDeclaration.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsNonUniqueTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/unHashableMixin.dart';

part 'dartBoxingExpression.freezed.dart';

@freezed
class DartBoxingExpression
    with
        _$DartBoxingExpression,
        HashKeyMixin<DartBoxingExpression>,
        HashComparableMixin<DartBoxingExpression>,
        UnhashableMixin<DartBoxingExpression>,
        SwarsNonUniqueTermMixin<DartBoxingExpression,
            $DartBoxingExpressionCopyWith<DartBoxingExpression>, String>,
        SwarsTransformMixin<DartBoxingExpression,
            $DartBoxingExpressionCopyWith<DartBoxingExpression>, String>,
        SwarsTermStringResultMixin {
  DartBoxingExpression._();

  factory DartBoxingExpression({
    required final SwidType swidType,
    required final Expression expression,
    final Expression? tableExpression,
  }) = _$DartBoxingExpressionCtor;

  @override
  DartBoxingExpression clone({
    final SwidType? swidType,
    final Expression? expression,
    final Expression? tableExpression,
  }) =>
      DartBoxingExpression(
        swidType: swidType ?? this.swidType.clone(),
        expression: expression ?? this.expression,
        tableExpression: tableExpression ?? this.tableExpression,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        swidType.when(
          fromSwidInterface: (val) => narrowSwidInterfaceByReferenceDeclaration(
            swidInterface: val,
            onPrimitive: (_) => expression
                .accept(DartEmitter(
                  useNullSafetySyntax: true,
                ))
                .toString(),
            onDynamic: (_) => expression
                .accept(DartEmitter(
                  useNullSafetySyntax: true,
                ))
                .toString(),
            onClass: (val) => pipeline.reduceFromTerm(
              DartBoxObjectReference(
                type: val,
                objectReference: expression,
                boxLists: true,
                codeKind: CodeKind.expression,
                tableExpression: tableExpression,
              ),
            ),
            onEnum: (val) => pipeline.reduceFromTerm(
              DartBoxEnumReference(
                type: SwidType.fromSwidInterface(swidInterface: val),
                codeKind: CodeKind.expression,
                referenceName: expression
                    .accept(
                      DartEmitter(
                        useNullSafetySyntax: true,
                      ),
                    )
                    .toString(),
              ),
            ),
            onVoid: (_) => expression
                .accept(DartEmitter(
                  useNullSafetySyntax: true,
                ))
                .toString(),
            onTypeParameter: (_) => expression
                .accept(DartEmitter(
                  useNullSafetySyntax: true,
                ))
                .toString(),
            onUnknown: (_) => expression
                .accept(DartEmitter(
                  useNullSafetySyntax: true,
                ))
                .toString(),
          ),
          fromSwidClass: (_) => "",
          fromSwidDefaultFormalParameter: (_) => "",
          fromSwidFunctionType: (_) => expression
              .accept(
                DartEmitter(
                  useNullSafetySyntax: true,
                ),
              )
              .toString(),
        ),
      );
}
