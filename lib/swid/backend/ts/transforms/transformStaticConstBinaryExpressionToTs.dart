import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformLiteralToTs.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstBinaryExpression.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldReference.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsNonUniqueTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/unHashableMixin.dart';

part 'transformStaticConstBinaryExpressionToTs.freezed.dart';

@freezed
class TransformStaticConstBinaryExpressionToTs
    with
        _$TransformStaticConstBinaryExpressionToTs,
        HashKeyMixin<TransformStaticConstBinaryExpressionToTs>,
        HashComparableMixin<TransformStaticConstBinaryExpressionToTs>,
        UnhashableMixin<TransformStaticConstBinaryExpressionToTs>,
        SwarsNonUniqueTermMixin<
            TransformStaticConstBinaryExpressionToTs,
            $TransformStaticConstBinaryExpressionToTsCopyWith<
                TransformStaticConstBinaryExpressionToTs>,
            String>,
        SwarsTransformMixin<
            TransformStaticConstBinaryExpressionToTs,
            $TransformStaticConstBinaryExpressionToTsCopyWith<
                TransformStaticConstBinaryExpressionToTs>,
            String>,
        SwarsTermStringResultMixin {
  TransformStaticConstBinaryExpressionToTs._();

  factory TransformStaticConstBinaryExpressionToTs({
    required final SwidStaticConstBinaryExpression
        swidStaticConstBinaryExpression,
    required final SwidClass? parentClass,
    required final String inexpressibleFunctionInvocationFallback,
    required final SwidStaticConstFieldReferenceScopeResolver scopeResolver,
  }) = _$TransformStaticConstBinaryExpressionToTsCtor;

  @override
  TransformStaticConstBinaryExpressionToTs clone({
    final SwidStaticConstBinaryExpression? swidStaticConstBinaryExpression,
    final SwidClass? parentClass,
    final String? inexpressibleFunctionInvocationFallback,
    final SwidStaticConstFieldReferenceScopeResolver? scopeResolver,
  }) =>
      TransformStaticConstBinaryExpressionToTs(
        swidStaticConstBinaryExpression: swidStaticConstBinaryExpression ??
            this.swidStaticConstBinaryExpression,
        parentClass: parentClass ?? this.parentClass,
        inexpressibleFunctionInvocationFallback:
            inexpressibleFunctionInvocationFallback ??
                this.inexpressibleFunctionInvocationFallback,
        scopeResolver: scopeResolver ?? this.scopeResolver,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        pipeline.reduceFromTerm(
              TransformLiteralToTs(
                swidLiteral: swidStaticConstBinaryExpression.leftOperand,
                scopeResolver: scopeResolver,
                parentClass: parentClass,
                inexpressibleFunctionInvocationFallback:
                    inexpressibleFunctionInvocationFallback,
              ),
            ) +
            swidStaticConstBinaryExpression.operator +
            pipeline.reduceFromTerm(
              TransformLiteralToTs(
                swidLiteral: swidStaticConstBinaryExpression.rightOperand,
                scopeResolver: scopeResolver,
                parentClass: parentClass,
                inexpressibleFunctionInvocationFallback:
                    inexpressibleFunctionInvocationFallback,
              ),
            ),
      );
}
