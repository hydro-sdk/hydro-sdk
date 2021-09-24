import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformLiteralToTs.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldReference.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstPrefixedExpression.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsNonUniqueTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/unHashableMixin.dart';

part 'transformStaticConstPrefixedExpressionToTs.freezed.dart';

@freezed
class TransformStaticConstPrefixedExpressionToTs
    with
        _$TransformStaticConstPrefixedExpressionToTs,
        HashKeyMixin<TransformStaticConstPrefixedExpressionToTs>,
        HashComparableMixin<TransformStaticConstPrefixedExpressionToTs>,
        UnhashableMixin<TransformStaticConstPrefixedExpressionToTs>,
        SwarsNonUniqueTermMixin<
            TransformStaticConstPrefixedExpressionToTs,
            $TransformStaticConstPrefixedExpressionToTsCopyWith<
                TransformStaticConstPrefixedExpressionToTs>,
            String>,
        SwarsTransformMixin<
            TransformStaticConstPrefixedExpressionToTs,
            $TransformStaticConstPrefixedExpressionToTsCopyWith<
                TransformStaticConstPrefixedExpressionToTs>,
            String>,
        SwarsTermStringResultMixin {
  TransformStaticConstPrefixedExpressionToTs._();

  factory TransformStaticConstPrefixedExpressionToTs({
    required final SwidStaticConstPrefixedExpression
        swidStaticConstPrefixedExpression,
    required final SwidClass? parentClass,
    required final String inexpressibleFunctionInvocationFallback,
    required final SwidStaticConstFieldReferenceScopeResolver scopeResolver,
  }) = _$TransformStaticConstPrefixedExpressionToTsCtor;

  @override
  TransformStaticConstPrefixedExpressionToTs clone({
    final SwidStaticConstPrefixedExpression? swidStaticConstPrefixedExpression,
    final SwidClass? parentClass,
    final String? inexpressibleFunctionInvocationFallback,
    final SwidStaticConstFieldReferenceScopeResolver? scopeResolver,
  }) =>
      TransformStaticConstPrefixedExpressionToTs(
        swidStaticConstPrefixedExpression: swidStaticConstPrefixedExpression ??
            this.swidStaticConstPrefixedExpression,
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
        swidStaticConstPrefixedExpression.prefix +
            pipeline.reduceFromTerm(
              TransformLiteralToTs(
                swidLiteral: swidStaticConstPrefixedExpression.expression,
                parentClass: parentClass,
                scopeResolver: scopeResolver,
                inexpressibleFunctionInvocationFallback:
                    inexpressibleFunctionInvocationFallback,
              ),
            ),
      );
}
