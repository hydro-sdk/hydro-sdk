import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'tsClassPostamble.freezed.dart';

@freezed
class TsClassPostamble
    with
        _$TsClassPostamble,
        HashKeyMixin<TsClassPostamble>,
        HashComparableMixin<TsClassPostamble>,
        SwarsTransformMixin<TsClassPostamble,
            $TsClassPostambleCopyWith<TsClassPostamble>, String>,
        SwarsTermStringResultMixin {
  TsClassPostamble._();

  factory TsClassPostamble({
    required final SwidClass swidClass,
  }) = _$TsClassPostambleCtor;

  @override
  String get cacheGroup => "tsClassPostamble";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidClass.hashKey.hashableParts;
  }

  @override
  TsClassPostamble clone({
    final SwidClass? swidClass,
  }) =>
      TsClassPostamble(
        swidClass: swidClass ?? this.swidClass,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        "}\n",
      );
}
