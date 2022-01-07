import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformTopLevelStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidTopLevelStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'tsTopLevelStaticConstFieldDeclaration.freezed.dart';

@freezed
class TsTopLevelStaticConstFieldDeclaration
    with
        _$TsTopLevelStaticConstFieldDeclaration,
        HashKeyMixin<TsTopLevelStaticConstFieldDeclaration>,
        HashComparableMixin<TsTopLevelStaticConstFieldDeclaration>,
        SwarsTransformMixin<
            TsTopLevelStaticConstFieldDeclaration,
            $TsTopLevelStaticConstFieldDeclarationCopyWith<
                TsTopLevelStaticConstFieldDeclaration>,
            String>,
        SwarsTermStringResultMixin {
  TsTopLevelStaticConstFieldDeclaration._();

  factory TsTopLevelStaticConstFieldDeclaration({
    required final SwidTopLevelStaticConstFieldDeclaration
        swidTopLevelStaticConstFieldDeclaration,
  }) = _$TsTopLevelStaticConstFieldDeclarationCtor;

  @override
  String get cacheGroup => "tsTopLevelStaticConstFieldDeclaration";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidTopLevelStaticConstFieldDeclaration.hashKey.hashableParts;
  }

  @override
  TsTopLevelStaticConstFieldDeclaration clone({
    final SwidTopLevelStaticConstFieldDeclaration?
        swidTopLevelStaticConstFieldDeclaration,
  }) =>
      TsTopLevelStaticConstFieldDeclaration(
        swidTopLevelStaticConstFieldDeclaration:
            swidTopLevelStaticConstFieldDeclaration ??
                this.swidTopLevelStaticConstFieldDeclaration,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        pipeline.reduceFromTerm(
          TransformTopLevelStaticConstFieldDeclaration(
            swidTopLevelStaticConstFieldDeclaration:
                swidTopLevelStaticConstFieldDeclaration,
          ),
        ),
      );
}
