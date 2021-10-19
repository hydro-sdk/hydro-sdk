import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidTypeFormal.freezed.dart';
part 'swidTypeFormal.g.dart';

@freezed
class SwidTypeFormal
    with
        _$SwidTypeFormal,
        HashKeyMixin<SwidTypeFormal>,
        HashComparableMixin<SwidTypeFormal>
    implements
        ICopyable<SwidTypeFormal, $SwidTypeFormalCopyWith<SwidTypeFormal>> {
  SwidTypeFormal._();

  factory SwidTypeFormal({
    required final SwidTypeFormalValue value,
    required final SwidReferenceDeclarationKind swidReferenceDeclarationKind,
  }) = _$Data;

  factory SwidTypeFormal.fromJson(Map<String, dynamic> json) =>
      _$SwidTypeFormalFromJson(json);

  factory SwidTypeFormal.clone({
    required final SwidTypeFormal swidTypeFormal,
    final SwidTypeFormalValue? value,
    final SwidReferenceDeclarationKind? swidReferenceDeclarationKind,
  }) =>
      SwidTypeFormal(
        value: value ??
            SwidTypeFormalValue.clone(
                swidTypeFormalValue: swidTypeFormal.value),
        swidReferenceDeclarationKind: swidReferenceDeclarationKind ??
            swidTypeFormal.swidReferenceDeclarationKind,
      );

  @override
  late final List<int> hashableParts = [
    ...value.hashableParts,
    swidReferenceDeclarationKind.index,
  ];

  @override
  SwidTypeFormal clone({
    final SwidTypeFormalValue? value,
    final SwidReferenceDeclarationKind? swidReferenceDeclarationKind,
  }) =>
      SwidTypeFormal.clone(
        swidTypeFormal: this,
        value: value,
        swidReferenceDeclarationKind: swidReferenceDeclarationKind,
      );
}
