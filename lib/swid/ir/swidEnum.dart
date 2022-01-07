import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidEnum.freezed.dart';
part 'swidEnum.g.dart';

@freezed
class SwidEnum
    with _$SwidEnum, HashKeyMixin<SwidEnum>, HashComparableMixin<SwidEnum>
    implements ICopyable<SwidEnum, $SwidEnumCopyWith<SwidEnum>> {
  SwidEnum._();

  factory SwidEnum({
    required final String originalPackagePath,
    required final String identifier,
    required final List<String> children,
  }) = _$Data;

  factory SwidEnum.fromJson(Map<String, dynamic> json) =>
      _$SwidEnumFromJson(json);

  factory SwidEnum._clone({
    required final SwidEnum swidEnum,
    final String? originalPackagePath,
    final String? identifier,
    final List<String>? children,
  }) =>
      SwidEnum(
        originalPackagePath:
            originalPackagePath ?? swidEnum.originalPackagePath,
        identifier: identifier ?? swidEnum.identifier,
        children: children ?? swidEnum.children,
      );

  @override
  late final Iterable<Iterable<int>> hashableParts = (() sync* {
    yield* originalPackagePath.hashableParts;
    yield* identifier.hashableParts;
    yield* children.hashableParts;
  })();

  @override
  SwidEnum clone({
    final String? originalPackagePath,
    final String? identifier,
    final List<String>? children,
  }) =>
      SwidEnum._clone(
        swidEnum: this,
        originalPackagePath: originalPackagePath,
        identifier: identifier,
        children: children,
      );
}
