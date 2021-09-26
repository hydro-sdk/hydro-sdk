import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformBooleanLiteralToTs.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformDoubleLiteralToTs.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformIntegerLiteralToTs.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformStaticConstBinaryExpressionToTs.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformStaticConstFunctionInvocation.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformStaticConstListLiteralToTs.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformStaticConstMapLiteralEntryToTs.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformStaticConstMapLiteralToTs.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformStaticConstPrefixedExpressionToTs.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformStaticConstPrefixedIdentifierToTs.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformStringLiteralToTs.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldReference.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsNonUniqueTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/unHashableMixin.dart';

part 'transformLiteralToTs.freezed.dart';

typedef String? SwidStaticConstFieldReferenceScopeResolver(
    SwidStaticConstFieldReference staticConstFieldReference);

@freezed
class TransformLiteralToTs
    with
        _$TransformLiteralToTs,
        HashKeyMixin<TransformLiteralToTs>,
        HashComparableMixin<TransformLiteralToTs>,
        UnhashableMixin<TransformLiteralToTs>,
        SwarsNonUniqueTermMixin<TransformLiteralToTs,
            $TransformLiteralToTsCopyWith<TransformLiteralToTs>, String>,
        SwarsTransformMixin<TransformLiteralToTs,
            $TransformLiteralToTsCopyWith<TransformLiteralToTs>, String>,
        SwarsTermStringResultMixin {
  TransformLiteralToTs._();

  factory TransformLiteralToTs({
    required final SwidStaticConst swidLiteral,
    required final SwidClass? parentClass,
    required final String inexpressibleFunctionInvocationFallback,
    required final SwidStaticConstFieldReferenceScopeResolver scopeResolver,
  }) = _$TransformLiteralToTsCtor;

  @override
  TransformLiteralToTs clone({
    final SwidStaticConst? swidLiteral,
    final SwidClass? parentClass,
    final String? inexpressibleFunctionInvocationFallback,
    final SwidStaticConstFieldReferenceScopeResolver? scopeResolver,
  }) =>
      TransformLiteralToTs(
        swidLiteral: swidLiteral ?? this.swidLiteral,
        parentClass: parentClass ?? this.parentClass,
        inexpressibleFunctionInvocationFallback:
            inexpressibleFunctionInvocationFallback ??
                this.inexpressibleFunctionInvocationFallback,
        scopeResolver: scopeResolver ?? this.scopeResolver,
      );

  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        swidLiteral.when(
          fromSwidIntegerLiteral: (val) => pipeline.reduceFromTerm(
            TransformIntegerLiteralToTs(
              swidIntegerLiteral: val,
            ),
          ),
          fromSwidStringLiteral: (val) => pipeline.reduceFromTerm(
            TransformStringLiteralToTs(
              swidStringLiteral: val,
            ),
          ),
          fromDoubleLiteral: (val) =>
              pipeline.reduceFromTerm(TransformDoubleLiteralToTs(
            swidDoubleLiteral: val,
          )),
          fromSwidBooleanLiteral: (val) =>
              pipeline.reduceFromTerm(TransformBooleanLiteralToTs(
            swidBooleanLiteral: val,
          )),
          fromSwidStaticConstTopLevelVariableReference: (val) => val.identifier,
          fromSwidStaticConstIdentifier: (val) => [
            val.enclosingType.name,
            ".",
            val.identifier,
          ].join(""),
          fromSwidStaticConstListLiteral: (val) => pipeline.reduceFromTerm(
            TransformStaticConstListLiteralToTs(
              staticConstListLiteral: val,
              parentClass: parentClass,
              inexpressibleFunctionInvocationFallback:
                  inexpressibleFunctionInvocationFallback,
              scopeResolver: scopeResolver,
            ),
          ),
          fromSwidStaticConstPrefixedExpression: (val) =>
              pipeline.reduceFromTerm(
            TransformStaticConstPrefixedExpressionToTs(
              swidStaticConstPrefixedExpression: val,
              parentClass: parentClass,
              scopeResolver: scopeResolver,
              inexpressibleFunctionInvocationFallback:
                  inexpressibleFunctionInvocationFallback,
            ),
          ),
          fromSwidStaticConstBinaryExpression: (val) => pipeline.reduceFromTerm(
            TransformStaticConstBinaryExpressionToTs(
              swidStaticConstBinaryExpression: val,
              scopeResolver: scopeResolver,
              parentClass: parentClass,
              inexpressibleFunctionInvocationFallback:
                  inexpressibleFunctionInvocationFallback,
            ),
          ),
          fromSwidStaticConstFunctionInvocation: (val) =>
              pipeline.reduceFromTerm(
            TransformStaticConstFunctionInvocation(
              swidStaticConstFunctionInvocation: val,
              parentClass: parentClass,
              scopeResolver: scopeResolver,
              inexpressibleFunctionInvocationFallback:
                  inexpressibleFunctionInvocationFallback,
            ),
          ),
          fromSwidStaticConstPrefixedIdentifier: (val) =>
              pipeline.reduceFromTerm(
            TransformStaticConstPrefixedIdentifierToTs(
              staticConstPrefixedIdentifier: val,
              parentClass: parentClass,
              scopeResolver: scopeResolver,
              inexpressibleFunctionInvocationFallback:
                  inexpressibleFunctionInvocationFallback,
            ),
          ),
          fromSwidStaticConstFieldReference: (val) => val.name,
          fromSwidStaticConstMapLiteralEntry: (val) => pipeline.reduceFromTerm(
            TransformStaticConstMapLiteralEntryToTs(
              staticConstMapLiteralEntry: val,
              parentClass: parentClass,
              inexpressibleFunctionInvocationFallback:
                  inexpressibleFunctionInvocationFallback,
              scopeResolver: scopeResolver,
            ),
          ),
          fromSwidStaticConstMapLiteral: (val) => pipeline.reduceFromTerm(
            TransformStaticConstMapLiteralToTs(
              staticConstMapLiteral: val,
              parentClass: parentClass,
              inexpressibleFunctionInvocationFallback:
                  inexpressibleFunctionInvocationFallback,
              scopeResolver: scopeResolver,
            ),
          ),
        ),
      );
}
