import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformLiteralToTs.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/util/makeDefaultInexpressibleFunctionInvocationFallback.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldReference.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsNonUniqueTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/unHashableMixin.dart';

part 'transformStaticConstFieldDeclaration.freezed.dart';

@freezed
class TransformStaticConstFieldDeclaration
    with
        _$TransformStaticConstFieldDeclaration,
        HashKeyMixin<TransformStaticConstFieldDeclaration>,
        HashComparableMixin<TransformStaticConstFieldDeclaration>,
        UnhashableMixin<TransformStaticConstFieldDeclaration>,
        SwarsNonUniqueTermMixin<
            TransformStaticConstFieldDeclaration,
            $TransformStaticConstFieldDeclarationCopyWith<
                TransformStaticConstFieldDeclaration>,
            String>,
        SwarsTransformMixin<
            TransformStaticConstFieldDeclaration,
            $TransformStaticConstFieldDeclarationCopyWith<
                TransformStaticConstFieldDeclaration>,
            String>,
        SwarsTermStringResultMixin {
  TransformStaticConstFieldDeclaration._();

  factory TransformStaticConstFieldDeclaration({
    required final SwidStaticConstFieldDeclaration staticConstFieldDeclaration,
    required final SwidStaticConstFieldReferenceScopeResolver scopeResolver,
    required final SwidClass parentClass,
  }) = _$TransformStaticConstFieldDeclarationCtor;

  @override
  TransformStaticConstFieldDeclaration clone({
    final SwidStaticConstFieldDeclaration? staticConstFieldDeclaration,
    final SwidStaticConstFieldReferenceScopeResolver? scopeResolver,
    final SwidClass? parentClass,
  }) =>
      TransformStaticConstFieldDeclaration(
        staticConstFieldDeclaration:
            staticConstFieldDeclaration ?? this.staticConstFieldDeclaration,
        scopeResolver: scopeResolver ?? this.scopeResolver,
        parentClass: parentClass ?? this.parentClass,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        [
          "public",
          " ",
          "static",
          " ",
          staticConstFieldDeclaration.name,
          " ",
          "=",
          " ",
          pipeline.reduceFromTerm(
            TransformLiteralToTs(
              swidLiteral: staticConstFieldDeclaration.value,
              scopeResolver: scopeResolver,
              parentClass: parentClass,
              //should match the corresponding vm declaration for the inexpressible field in the same translation unit
              inexpressibleFunctionInvocationFallback:
                  makeDefaultInexpressibleFunctionInvocationFallback(
                parentClass: parentClass,
                name: staticConstFieldDeclaration.name,
              ),
            ),
          ),
          ";",
        ].join(""),
      );
}
