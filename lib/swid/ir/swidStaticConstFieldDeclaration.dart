import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidStaticConstFieldDeclaration.freezed.dart';
part 'swidStaticConstFieldDeclaration.g.dart';

@freezed
class SwidStaticConstFieldDeclaration
    with
        _$SwidStaticConstFieldDeclaration,
        HashKeyMixin<SwidStaticConstFieldDeclaration>,
        HashComparableMixin<SwidStaticConstFieldDeclaration>
    implements
        ICopyable<
            SwidStaticConstFieldDeclaration,
            $SwidStaticConstFieldDeclarationCopyWith<
                SwidStaticConstFieldDeclaration>> {
  SwidStaticConstFieldDeclaration._();

  factory SwidStaticConstFieldDeclaration({
    required final String name,
    required final SwidStaticConst value,
  }) = _$Data;

  factory SwidStaticConstFieldDeclaration.fromJson(Map<String, dynamic> json) =>
      _$SwidStaticConstFieldDeclarationFromJson(json);

  factory SwidStaticConstFieldDeclaration.clone({
    required final SwidStaticConstFieldDeclaration
        swidStaticConstFieldDeclaration,
    final String? name,
    final SwidStaticConst? value,
  }) =>
      SwidStaticConstFieldDeclaration(
        name: name ?? swidStaticConstFieldDeclaration.name,
        value: value ?? swidStaticConstFieldDeclaration.value,
      );

  @override
  late final Iterable<Iterable<int>> hashableParts = (() sync* {
    yield* name.hashableParts;
    yield* value.hashKey.hashableParts;
  })();

  @override
  SwidStaticConstFieldDeclaration clone({
    final String? name,
    final SwidStaticConst? value,
  }) =>
      SwidStaticConstFieldDeclaration.clone(
        swidStaticConstFieldDeclaration: this,
        name: name,
        value: value,
      );
}
