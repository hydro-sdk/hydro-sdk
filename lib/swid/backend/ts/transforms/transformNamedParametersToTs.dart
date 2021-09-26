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

part 'transformNamedParametersToTs.freezed.dart';

@freezed
class TransformNamedParametersToTs
    with
        _$TransformNamedParametersToTs,
        HashKeyMixin<TransformNamedParametersToTs>,
        HashComparableMixin<TransformNamedParametersToTs>,
        UnhashableMixin<TransformNamedParametersToTs>,
        SwarsNonUniqueTermMixin<
            TransformNamedParametersToTs,
            $TransformNamedParametersToTsCopyWith<TransformNamedParametersToTs>,
            String>,
        SwarsTransformMixin<
            TransformNamedParametersToTs,
            $TransformNamedParametersToTsCopyWith<TransformNamedParametersToTs>,
            String>,
        SwarsTermStringResultMixin {
  TransformNamedParametersToTs._();

  factory TransformNamedParametersToTs({
    required final Map<String, SwidStaticConst>? namedParameters,
    required final SwidClass? parentClass,
    required final String inexpressibleFunctionInvocationFallback,
    required final SwidStaticConstFieldReferenceScopeResolver scopeResolver,
  }) = _$TransformNamedParametersToTsCtor;

  @override
  TransformNamedParametersToTs clone({
    final Map<String, SwidStaticConst>? namedParameters,
    final SwidClass? parentClass,
    final String? inexpressibleFunctionInvocationFallback,
    final SwidStaticConstFieldReferenceScopeResolver? scopeResolver,
  }) =>
      TransformNamedParametersToTs(
        namedParameters: namedParameters ?? this.namedParameters,
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
        namedParameters != null && namedParameters!.keys.isNotEmpty
            ? "{ " +
                namedParameters!.keys
                    .map(
                      (x) =>
                          "$x: " +
                          pipeline.reduceFromTerm(
                            TransformLiteralToTs(
                              swidLiteral: namedParameters![x]!,
                              parentClass: parentClass,
                              scopeResolver: scopeResolver,
                              inexpressibleFunctionInvocationFallback:
                                  inexpressibleFunctionInvocationFallback,
                            ),
                          ),
                    )
                    .join(", ") +
                " }"
            : "",
      );
}
