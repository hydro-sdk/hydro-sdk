import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformLiteralToTs.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformPrimitiveNamesToTs.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformStaticConstMapLiteralEntryToTs.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldReference.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstMapLiteral.dart';
import 'package:hydro_sdk/swid/ir/util/rewriteClassReferencesToInterfaceReferences.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsNonUniqueTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/unHashableMixin.dart';

part 'transformStaticConstMapLiteralToTs.freezed.dart';

@freezed
class TransformStaticConstMapLiteralToTs
    with
        _$TransformStaticConstMapLiteralToTs,
        HashKeyMixin<TransformStaticConstMapLiteralToTs>,
        HashComparableMixin<TransformStaticConstMapLiteralToTs>,
        UnhashableMixin<TransformStaticConstMapLiteralToTs>,
        SwarsNonUniqueTermMixin<
            TransformStaticConstMapLiteralToTs,
            $TransformStaticConstMapLiteralToTsCopyWith<
                TransformStaticConstMapLiteralToTs>,
            String>,
        SwarsTransformMixin<
            TransformStaticConstMapLiteralToTs,
            $TransformStaticConstMapLiteralToTsCopyWith<
                TransformStaticConstMapLiteralToTs>,
            String>,
        SwarsTermStringResultMixin {
  TransformStaticConstMapLiteralToTs._();

  factory TransformStaticConstMapLiteralToTs({
    required final SwidStaticConstMapLiteral staticConstMapLiteral,
    required final SwidClass? parentClass,
    required final String inexpressibleFunctionInvocationFallback,
    required final SwidStaticConstFieldReferenceScopeResolver scopeResolver,
  }) = _$TransformStaticConstMapLiteralToTsCtor;

  @override
  TransformStaticConstMapLiteralToTs clone({
    final SwidStaticConstMapLiteral? staticConstMapLiteral,
    final SwidClass? parentClass,
    final String? inexpressibleFunctionInvocationFallback,
    final SwidStaticConstFieldReferenceScopeResolver? scopeResolver,
  }) =>
      TransformStaticConstMapLiteralToTs(
        staticConstMapLiteral:
            staticConstMapLiteral ?? this.staticConstMapLiteral,
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
          " Map.fromEntries(",
          "<IIterable<IMapEntry",
          "<",
          rewriteClassReferencesToInterfaceReferences(
            swidType: pipeline.reduceFromTerm(
              TransformPrimitiveNamesToTs(
                swidType: staticConstMapLiteral.staticType,
              ),
            ),
          ).maybeWhen(
            fromSwidInterface: (val) =>
                val.typeArguments.map((x) => x.type.name).join(","),
            orElse: () => "",
          ),
          ">>>",
          "<unknown>",
          "List.fromArray([",
          staticConstMapLiteral.elements
              .map(
                (x) => pipeline.reduceFromTerm(
                  TransformStaticConstMapLiteralEntryToTs(
                    staticConstMapLiteralEntry: x,
                    parentClass: parentClass,
                    inexpressibleFunctionInvocationFallback:
                        inexpressibleFunctionInvocationFallback,
                    scopeResolver: scopeResolver,
                  ),
                ),
              )
              .join(", "),
          "]))",
        ].join(""),
      );
}
