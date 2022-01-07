import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformTypeDeclarationToTs.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'tsClassInstanceFieldDeclarations.freezed.dart';

@freezed
class TsClassInstanceFieldDeclarations
    with
        _$TsClassInstanceFieldDeclarations,
        HashKeyMixin<TsClassInstanceFieldDeclarations>,
        HashComparableMixin<TsClassInstanceFieldDeclarations>,
        SwarsTransformMixin<
            TsClassInstanceFieldDeclarations,
            $TsClassInstanceFieldDeclarationsCopyWith<
                TsClassInstanceFieldDeclarations>,
            String>,
        SwarsTermStringResultMixin {
  TsClassInstanceFieldDeclarations._();

  factory TsClassInstanceFieldDeclarations({
    required final SwidClass swidClass,
  }) = _$TsClassInstanceFieldDeclarationsCtor;

  @override
  String get cacheGroup => "tsClassInstanceFieldDeclarations";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidClass.hashKey.hashableParts;
  }

  @override
  TsClassInstanceFieldDeclarations clone({
    final SwidClass? swidClass,
  }) =>
      TsClassInstanceFieldDeclarations(
        swidClass: swidClass ?? this.swidClass,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        (swidClass.instanceFieldDeclarations.isNotEmpty)
            ? [
                  ...swidClass.instanceFieldDeclarations.entries
                      .map((x) =>
                          "    public readonly ${x.key}: ${pipeline.reduceFromTerm(
                            TransformTypeDeclarationToTs(
                              parentClass: swidClass,
                              swidType: x.value,
                            ),
                          )} = undefined as any;")
                      .toList()
                ].join("\n") +
                "\n"
            : "",
      );
}
