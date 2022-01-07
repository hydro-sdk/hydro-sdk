import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidStaticConstMapLiteralEntry.freezed.dart';
part 'swidStaticConstMapLiteralEntry.g.dart';

@freezed
class SwidStaticConstMapLiteralEntry
    with
        _$SwidStaticConstMapLiteralEntry,
        HashKeyMixin<SwidStaticConstMapLiteralEntry>,
        HashComparableMixin<SwidStaticConstMapLiteralEntry>
    implements
        ICopyable<
            SwidStaticConstMapLiteralEntry,
            $SwidStaticConstMapLiteralEntryCopyWith<
                SwidStaticConstMapLiteralEntry>> {
  SwidStaticConstMapLiteralEntry._();

  factory SwidStaticConstMapLiteralEntry({
    required final SwidStaticConst key,
    required final SwidStaticConst value,
  }) = _$SwidStaticConstMapLiteralEntryCtor;

  factory SwidStaticConstMapLiteralEntry.fromJson(Map<String, dynamic> json) =>
      _$SwidStaticConstMapLiteralEntryFromJson(json);

  factory SwidStaticConstMapLiteralEntry.clone({
    required final SwidStaticConstMapLiteralEntry
        swidStaticConstMapLiteralEntry,
    final SwidStaticConst? key,
    final SwidStaticConst? value,
  }) =>
      SwidStaticConstMapLiteralEntry(
        key: key ?? swidStaticConstMapLiteralEntry.key,
        value: value ?? swidStaticConstMapLiteralEntry.value,
      );

  @override
  late final Iterable<Iterable<int>> hashableParts = (() sync* {
    yield* key.hashKey.hashableParts;
    yield* value.hashKey.hashableParts;
  })();

  @override
  SwidStaticConstMapLiteralEntry clone({
    final SwidStaticConst? key,
    final SwidStaticConst? value,
  }) =>
      SwidStaticConstMapLiteralEntry.clone(
        swidStaticConstMapLiteralEntry: this,
        key: key,
        value: value,
      );
}
