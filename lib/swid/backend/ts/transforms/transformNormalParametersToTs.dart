import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformLiteralToTs.dart';
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

part 'transformNormalParametersToTs.freezed.dart';

@freezed
class TransformNormalParametersToTs
    with
        _$TransformNormalParametersToTs,
        HashKeyMixin<TransformNormalParametersToTs>,
        HashComparableMixin<TransformNormalParametersToTs>,
        UnhashableMixin<TransformNormalParametersToTs>,
        SwarsNonUniqueTermMixin<
            TransformNormalParametersToTs,
            $TransformNormalParametersToTsCopyWith<
                TransformNormalParametersToTs>,
            String>,
        SwarsTransformMixin<
            TransformNormalParametersToTs,
            $TransformNormalParametersToTsCopyWith<
                TransformNormalParametersToTs>,
            String>,
        SwarsTermStringResultMixin {
  TransformNormalParametersToTs._();

  factory TransformNormalParametersToTs({
    required final List<SwidStaticConst> swidLiterals,
    required final SwidClass? parentClass,
    required final String inexpressibleFunctionInvocationFallback,
    required final SwidStaticConstFieldReferenceScopeResolver scopeResolver,
  }) = _$TransformNormalParametersToTsCtor;

  @override
  TransformNormalParametersToTs clone({
    final List<SwidStaticConst>? swidLiterals,
    final SwidClass? parentClass,
    final String? inexpressibleFunctionInvocationFallback,
    final SwidStaticConstFieldReferenceScopeResolver? scopeResolver,
  }) =>
      TransformNormalParametersToTs(
        swidLiterals: swidLiterals ?? this.swidLiterals,
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
        swidLiterals
            .map(
              (x) => pipeline.reduceFromTerm(
                TransformLiteralToTs(
                  swidLiteral: x,
                  parentClass: parentClass,
                  scopeResolver: scopeResolver,
                  inexpressibleFunctionInvocationFallback:
                      inexpressibleFunctionInvocationFallback,
                ),
              ),
            )
            .join(", "),
      );
}
