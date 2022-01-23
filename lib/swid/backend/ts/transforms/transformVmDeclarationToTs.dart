import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformTypeDeclarationToTs.dart';
import 'package:hydro_sdk/swid/backend/ts/tsVmDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'transformVmDeclarationToTs.freezed.dart';

@freezed
class TransformVmDeclarationToTs
    with
        _$TransformVmDeclarationToTs,
        HashKeyMixin<TransformVmDeclarationToTs>,
        HashComparableMixin<TransformVmDeclarationToTs>,
        SwarsTransformMixin<
            TransformVmDeclarationToTs,
            $TransformVmDeclarationToTsCopyWith<TransformVmDeclarationToTs>,
            String>,
        SwarsTermStringResultMixin {
  TransformVmDeclarationToTs._();

  factory TransformVmDeclarationToTs({
    required final TsVmDeclaration tsVmDeclaration,
  }) = _$TransformVmDeclarationToTsCtor;

  @override
  String get cacheGroup => "transformVmDeclarationToTs";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* tsVmDeclaration.hashKey.hashableParts;
  }

  @override
  TransformVmDeclarationToTs clone({
    final TsVmDeclaration? tsVmDeclaration,
  }) =>
      TransformVmDeclarationToTs(
        tsVmDeclaration: tsVmDeclaration ?? this.tsVmDeclaration,
      );

  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        "declare const " +
            _transformVmDeclarationToTs(
              tsVmDeclaration: tsVmDeclaration,
              pipeline: pipeline,
            ),
      );
}

String _transformVmDeclarationToTs({
  required final TsVmDeclaration tsVmDeclaration,
  required final ISwarsPipeline pipeline,
}) =>
    "${tsVmDeclaration.name}: {\n" +
    tsVmDeclaration.methods
        .map(
          (x) =>
              "${x.name}: " +
              pipeline.reduceFromTerm(
                TransformTypeDeclarationToTs(
                  parentClass: null,
                  swidType: SwidType.fromSwidFunctionType(
                    swidFunctionType: x,
                  ),
                ),
              ),
        )
        .toList()
        .join(";\n") +
    tsVmDeclaration.children
        .map(
          (x) => _transformVmDeclarationToTs(
            tsVmDeclaration: x,
            pipeline: pipeline,
          ),
        )
        .toList()
        .join("\n") +
    "\n}";
