import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/trailingReturnTypeKind.dart';
import 'package:hydro_sdk/swid/backend/ts/transforms/transformTypeDeclarationToTs.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'transformReturnTypeToTs.freezed.dart';

@freezed
class TransformReturnTypeToTs
    with
        _$TransformReturnTypeToTs,
        HashKeyMixin<TransformReturnTypeToTs>,
        HashComparableMixin<TransformReturnTypeToTs>,
        SwarsTransformMixin<TransformReturnTypeToTs,
            $TransformReturnTypeToTsCopyWith<TransformReturnTypeToTs>, String>,
        SwarsTermStringResultMixin {
  TransformReturnTypeToTs._();

  factory TransformReturnTypeToTs({
    required final SwidFunctionType swidFunctionType,
    required final TrailingReturnTypeKind trailingReturnTypeKind,
  }) = _$TransformReturnTypeToTsCtor;

  @override
  String get cacheGroup => "transformReturnTypeToTs";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidFunctionType.hashKey.hashableParts;
    yield [
      trailingReturnTypeKind.index,
    ];
  }

  @override
  TransformReturnTypeToTs clone({
    final SwidFunctionType? swidFunctionType,
    final TrailingReturnTypeKind? trailingReturnTypeKind,
  }) =>
      TransformReturnTypeToTs(
        swidFunctionType: swidFunctionType ?? this.swidFunctionType,
        trailingReturnTypeKind:
            trailingReturnTypeKind ?? this.trailingReturnTypeKind,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        " ${trailingReturnTypeKind == TrailingReturnTypeKind.fatArrow ? "=>" : trailingReturnTypeKind == TrailingReturnTypeKind.colon ? ":" : ""} " +
            pipeline.reduceFromTerm(
              TransformTypeDeclarationToTs(
                parentClass: null,
                swidType: swidFunctionType.returnType,
              ),
            ),
      );
}
