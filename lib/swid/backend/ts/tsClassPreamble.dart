import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformTypeFormalsToTs.dart';
import 'package:hydro_sdk/swid/backend/ts/tsSuperClassClause.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'tsClassPreamble.freezed.dart';

@freezed
class TsClassPreamble
    with
        _$TsClassPreamble,
        HashKeyMixin<TsClassPreamble>,
        HashComparableMixin<TsClassPreamble>,
        SwarsTransformMixin<TsClassPreamble,
            $TsClassPreambleCopyWith<TsClassPreamble>, String>,
        SwarsTermStringResultMixin {
  TsClassPreamble._();

  factory TsClassPreamble({
    required final SwidClass swidClass,
  }) = _$TsClassPreambleCtor;

  @override
  String get cacheGroup => "tsClassPreamble";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidClass.hashKey.hashableParts;
  }

  @override
  TsClassPreamble clone({
    final SwidClass? swidClass,
  }) =>
      TsClassPreamble(
        swidClass: swidClass ?? this.swidClass,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        ([
          "export class ${swidClass.name}",
          pipeline.reduceFromTerm(
            TransformTypeFormalsToTs(
              swidTypeFormals: swidClass.typeFormals,
            ),
          ),
          pipeline.reduceFromTerm(
            TsSuperClassClause(
              swidClass: swidClass,
              clauseKeyword: "implements",
            ),
          ),
          "{"
        ]..removeWhere((x) => x == null))
            .join("\n"),
      );
}
