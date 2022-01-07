import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidEnum.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'transformEnumToTs.freezed.dart';

@freezed
class TransformEnumToTs
    with
        _$TransformEnumToTs,
        HashKeyMixin<TransformEnumToTs>,
        HashComparableMixin<TransformEnumToTs>,
        SwarsTransformMixin<TransformEnumToTs,
            $TransformEnumToTsCopyWith<TransformEnumToTs>, String>,
        SwarsTermStringResultMixin {
  TransformEnumToTs._();

  factory TransformEnumToTs({
    required final SwidEnum swidEnum,
  }) = _$TransformEnumToTsCtor;

  @override
  String get cacheGroup => "transformEnumToTs";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidEnum.hashKey.hashableParts;
  }

  @override
  TransformEnumToTs clone({
    final SwidEnum? swidEnum,
  }) =>
      TransformEnumToTs(
        swidEnum: swidEnum ?? this.swidEnum,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) {
    List<String> children = swidEnum.children.map((x) => "    ${x},").toList();
    return SwarsTermResult.fromString(
      ["export enum ${swidEnum.identifier} {", ...children, "}", "\n"]
          .join("\n"),
    );
  }
}
