import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/trailingReturnTypeKind.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformLiteralToTs.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformTypeDeclarationToTs.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldReference.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstListLiteral.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsNonUniqueTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/unHashableMixin.dart';

part 'transformStaticConstListLiteralToTs.freezed.dart';

@freezed
class TransformStaticConstListLiteralToTs
    with
        _$TransformStaticConstListLiteralToTs,
        HashKeyMixin<TransformStaticConstListLiteralToTs>,
        HashComparableMixin<TransformStaticConstListLiteralToTs>,
        UnhashableMixin<TransformStaticConstListLiteralToTs>,
        SwarsNonUniqueTermMixin<
            TransformStaticConstListLiteralToTs,
            $TransformStaticConstListLiteralToTsCopyWith<
                TransformStaticConstListLiteralToTs>,
            String>,
        SwarsTransformMixin<
            TransformStaticConstListLiteralToTs,
            $TransformStaticConstListLiteralToTsCopyWith<
                TransformStaticConstListLiteralToTs>,
            String>,
        SwarsTermStringResultMixin {
  TransformStaticConstListLiteralToTs._();

  factory TransformStaticConstListLiteralToTs({
    required final SwidStaticConstListLiteral staticConstListLiteral,
    required final SwidClass? parentClass,
    required final String inexpressibleFunctionInvocationFallback,
    required final SwidStaticConstFieldReferenceScopeResolver scopeResolver,
  }) = _$TransformStaticConstListLiteralToTsCtor;

  @override
  TransformStaticConstListLiteralToTs clone({
    final SwidStaticConstListLiteral? staticConstListLiteral,
    final SwidClass? parentClass,
    final String? inexpressibleFunctionInvocationFallback,
    final SwidStaticConstFieldReferenceScopeResolver? scopeResolver,
  }) =>
      TransformStaticConstListLiteralToTs(
        staticConstListLiteral:
            staticConstListLiteral ?? this.staticConstListLiteral,
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
          "List.fromArray",
          ...(staticConstListLiteral.elements.isEmpty
              ? [
                  "<",
                  pipeline.reduceFromTerm(
                    TransformTypeDeclarationToTs(
                      swidType: staticConstListLiteral.staticType.when(
                        fromSwidInterface: (val) =>
                            val.typeArguments.first.type,
                        fromSwidClass: (_) => staticConstListLiteral.staticType,
                        fromSwidDefaultFormalParameter: (_) =>
                            staticConstListLiteral.staticType,
                        fromSwidFunctionType: (_) =>
                            staticConstListLiteral.staticType,
                      ),
                      parentClass: null,
                      emitDefaultFormalsAsOptionalNamed: false,
                      emitTopLevelInitializersForOptionalPositionals: false,
                      emitTrailingReturnType: true,
                      nestedTrailingReturnTypeKind:
                          TrailingReturnTypeKind.fatArrow,
                      topLevelTrailingReturnTypeKind:
                          TrailingReturnTypeKind.fatArrow,
                    ),
                  ),
                  ">",
                ]
              : []),
          "(",
          "[",
          ...staticConstListLiteral.elements
              .map((x) => [
                    pipeline.reduceFromTerm(
                      TransformLiteralToTs(
                        swidLiteral: x,
                        parentClass: parentClass,
                        inexpressibleFunctionInvocationFallback:
                            inexpressibleFunctionInvocationFallback,
                        scopeResolver: scopeResolver,
                      ),
                    ),
                    ",",
                  ].join(""))
              .toList(),
          "])"
        ].join(""),
      );
}
