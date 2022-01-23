import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformLiteralToTs.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/util/makeDefaultInexpressibleFunctionInvocationFallback.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/util/makeDefaultStaticConstFieldReferenceScopeResolver.dart';
import 'package:hydro_sdk/swid/ir/swidTopLevelStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'transformTopLevelStaticConstFieldDeclaration.freezed.dart';

@freezed
class TransformTopLevelStaticConstFieldDeclaration
    with
        _$TransformTopLevelStaticConstFieldDeclaration,
        HashKeyMixin<TransformTopLevelStaticConstFieldDeclaration>,
        HashComparableMixin<TransformTopLevelStaticConstFieldDeclaration>,
        SwarsTransformMixin<
            TransformTopLevelStaticConstFieldDeclaration,
            $TransformTopLevelStaticConstFieldDeclarationCopyWith<
                TransformTopLevelStaticConstFieldDeclaration>,
            String>,
        SwarsTermStringResultMixin {
  TransformTopLevelStaticConstFieldDeclaration._();

  factory TransformTopLevelStaticConstFieldDeclaration({
    required final SwidTopLevelStaticConstFieldDeclaration
        swidTopLevelStaticConstFieldDeclaration,
  }) = _$TransformTopLevelStaticConstFieldDeclarationCtor;

  @override
  String get cacheGroup => "transformTopLevelStaticConstFieldDeclaration";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidTopLevelStaticConstFieldDeclaration.hashKey.hashableParts;
  }

  @override
  TransformTopLevelStaticConstFieldDeclaration clone({
    final SwidTopLevelStaticConstFieldDeclaration?
        swidTopLevelStaticConstFieldDeclaration,
  }) =>
      TransformTopLevelStaticConstFieldDeclaration(
        swidTopLevelStaticConstFieldDeclaration:
            swidTopLevelStaticConstFieldDeclaration ??
                this.swidTopLevelStaticConstFieldDeclaration,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        [
          "export",
          " ",
          "const",
          " ",
          swidTopLevelStaticConstFieldDeclaration.declaration.name,
          " = ",
          pipeline.reduceFromTerm(
            TransformLiteralToTs(
              swidLiteral:
                  swidTopLevelStaticConstFieldDeclaration.declaration.value,
              parentClass: null,
              inexpressibleFunctionInvocationFallback:
                  makeDefaultInexpressibleFunctionInvocationFallback(
                parentClass: null,
                name: swidTopLevelStaticConstFieldDeclaration.declaration.name,
              ),
              scopeResolver: makeDefaultStaticConstFieldReferenceScopeResolver(
                parentClass: null,
              ),
            ),
          ),
          ";",
        ].join(""),
      );
}
