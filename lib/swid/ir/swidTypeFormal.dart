import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalBound.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';
import 'package:hydro_sdk/swid/util/iJsonTransformable.dart';

part 'swidTypeFormal.freezed.dart';
part 'swidTypeFormal.g.dart';

@freezed
class SwidTypeFormal
    with
        _$SwidTypeFormal,
        HashKeyMixin<SwidTypeFormal>,
        HashComparableMixin<SwidTypeFormal>
    implements
        ICopyable<SwidTypeFormal, $SwidTypeFormalCopyWith<SwidTypeFormal>>,
        IJsonTransformable {
  SwidTypeFormal._();

  factory SwidTypeFormal({
    required final SwidTypeFormalValue value,
    required final SwidReferenceDeclarationKind swidReferenceDeclarationKind,
    required final SwidTypeFormalBound? swidTypeFormalBound,
  }) = _$Data;

  factory SwidTypeFormal.fromJson(Map<String, dynamic> json) =>
      _$SwidTypeFormalFromJson(json);

  factory SwidTypeFormal.clone({
    required final SwidTypeFormal swidTypeFormal,
    final SwidTypeFormalValue? value,
    final SwidReferenceDeclarationKind? swidReferenceDeclarationKind,
    final SwidTypeFormalBound? swidTypeFormalBound,
  }) =>
      SwidTypeFormal(
        value: value ??
            SwidTypeFormalValue.clone(
                swidTypeFormalValue: swidTypeFormal.value),
        swidReferenceDeclarationKind: swidReferenceDeclarationKind ??
            swidTypeFormal.swidReferenceDeclarationKind,
        swidTypeFormalBound:
            swidTypeFormalBound ?? swidTypeFormal.swidTypeFormalBound,
      );

  @override
  SwidTypeFormal fromJson(final Map<String, dynamic> json) =>
      SwidTypeFormal.fromJson(json);

  @override
  late final Iterable<Iterable<int>> hashableParts = (() sync* {
    yield* value.hashKey.hashableParts;
    yield [
      swidReferenceDeclarationKind.index,
    ];
    yield* swidTypeFormalBound?.hashKey.hashableParts ??
        [
          [
            1,
          ],
        ];
  })();

  @override
  SwidTypeFormal clone({
    final SwidTypeFormalValue? value,
    final SwidReferenceDeclarationKind? swidReferenceDeclarationKind,
    final SwidTypeFormalBound? swidTypeFormalBound,
  }) =>
      SwidTypeFormal.clone(
        swidTypeFormal: this,
        value: value,
        swidReferenceDeclarationKind: swidReferenceDeclarationKind,
        swidTypeFormalBound: swidTypeFormalBound,
      );
}
