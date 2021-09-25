import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformLiteralToTs.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldReference.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstPrefixedIdentifier.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsNonUniqueTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/unHashableMixin.dart';

part 'transformStaticConstPrefixedIdentifierToTs.freezed.dart';

@freezed
class TransformStaticConstPrefixedIdentifierToTs
    with
        _$TransformStaticConstPrefixedIdentifierToTs,
        HashKeyMixin<TransformStaticConstPrefixedIdentifierToTs>,
        HashComparableMixin<TransformStaticConstPrefixedIdentifierToTs>,
        UnhashableMixin<TransformStaticConstPrefixedIdentifierToTs>,
        SwarsNonUniqueTermMixin<
            TransformStaticConstPrefixedIdentifierToTs,
            $TransformStaticConstPrefixedIdentifierToTsCopyWith<
                TransformStaticConstPrefixedIdentifierToTs>,
            String>,
        SwarsTransformMixin<
            TransformStaticConstPrefixedIdentifierToTs,
            $TransformStaticConstPrefixedIdentifierToTsCopyWith<
                TransformStaticConstPrefixedIdentifierToTs>,
            String>,
        SwarsTermStringResultMixin {
  TransformStaticConstPrefixedIdentifierToTs._();

  factory TransformStaticConstPrefixedIdentifierToTs({
    required final SwidStaticConstPrefixedIdentifier
        staticConstPrefixedIdentifier,
    required final SwidClass? parentClass,
    required final String inexpressibleFunctionInvocationFallback,
    required final SwidStaticConstFieldReferenceScopeResolver scopeResolver,
  }) = _$TransformStaticConstPrefixedIdentifierToTsCtor;

  @override
  TransformStaticConstPrefixedIdentifierToTs clone({
    final SwidStaticConstPrefixedIdentifier? staticConstPrefixedIdentifier,
    final SwidClass? parentClass,
    final String? inexpressibleFunctionInvocationFallback,
    final SwidStaticConstFieldReferenceScopeResolver? scopeResolver,
  }) =>
      TransformStaticConstPrefixedIdentifierToTs(
        staticConstPrefixedIdentifier:
            staticConstPrefixedIdentifier ?? this.staticConstPrefixedIdentifier,
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
        [
          staticConstPrefixedIdentifier.prefix.name,
          ".",
          pipeline.reduceFromTerm(
            TransformLiteralToTs(
              swidLiteral: SwidStaticConst.fromSwidStaticConstFieldReference(
                  swidStaticConstFieldReference:
                      staticConstPrefixedIdentifier.staticConstFieldReference),
              parentClass: parentClass,
              scopeResolver: scopeResolver,
              inexpressibleFunctionInvocationFallback:
                  inexpressibleFunctionInvocationFallback,
            ),
          ),
        ].join(),
      );
}
