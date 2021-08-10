import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/util/iCloneable.dart';

part 'swidStaticConstMapLiteralEntry.freezed.dart';
part 'swidStaticConstMapLiteralEntry.g.dart';

@freezed
class SwidStaticConstMapLiteralEntry
    with _$SwidStaticConstMapLiteralEntry
    implements ICloneable<SwidStaticConstMapLiteralEntry> {
  const SwidStaticConstMapLiteralEntry._();

  const factory SwidStaticConstMapLiteralEntry({
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
        key: key ??
            SwidStaticConst.clone(
              swidStaticConst: swidStaticConstMapLiteralEntry.key,
            ),
        value: value ??
            SwidStaticConst.clone(
              swidStaticConst: swidStaticConstMapLiteralEntry.value,
            ),
      );

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
