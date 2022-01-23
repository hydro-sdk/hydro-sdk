import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';
import 'package:hydro_sdk/swid/util/iJsonTransformable.dart';

part 'swidOriginatedAncestorTypeFormal.freezed.dart';
part 'swidOriginatedAncestorTypeFormal.g.dart';

enum SwidOriginatedAncestorTypeFormalKind {
  kClass,
  kMethod,
}

@freezed
class SwidOriginatedAncestorTypeFormal
    with
        _$SwidOriginatedAncestorTypeFormal,
        HashKeyMixin<SwidOriginatedAncestorTypeFormal>,
        HashComparableMixin<SwidOriginatedAncestorTypeFormal>
    implements
        ICopyable<
            SwidOriginatedAncestorTypeFormal,
            $SwidOriginatedAncestorTypeFormalCopyWith<
                SwidOriginatedAncestorTypeFormal>>,
        IJsonTransformable {
  SwidOriginatedAncestorTypeFormal._();

  factory SwidOriginatedAncestorTypeFormal({
    required final SwidTypeFormal swidTypeFormal,
    required final SwidOriginatedAncestorTypeFormalKind kind,
  }) = _$SwidOriginatedAncestorTypeFormalCtor;

  factory SwidOriginatedAncestorTypeFormal.fromJson(
          Map<String, dynamic> json) =>
      _$SwidOriginatedAncestorTypeFormalFromJson(json);

  @override
  SwidOriginatedAncestorTypeFormal fromJson(Map<String, dynamic> json) =>
      SwidOriginatedAncestorTypeFormal.fromJson(json);

  @override
  SwidOriginatedAncestorTypeFormal clone({
    final SwidTypeFormal? swidTypeFormal,
    final SwidOriginatedAncestorTypeFormalKind? kind,
  }) =>
      SwidOriginatedAncestorTypeFormal(
        swidTypeFormal: swidTypeFormal ?? this.swidTypeFormal,
        kind: kind ?? this.kind,
      );

  @override
  late final Iterable<Iterable<int>> hashableParts = (() sync* {
    yield* swidTypeFormal.hashKey.hashableParts;
    yield [
      kind.index,
    ];
  })();
}
