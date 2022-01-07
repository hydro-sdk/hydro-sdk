import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidTopLevelStaticConstFieldDeclaration.freezed.dart';
part 'swidTopLevelStaticConstFieldDeclaration.g.dart';

@freezed
class SwidTopLevelStaticConstFieldDeclaration
    with
        _$SwidTopLevelStaticConstFieldDeclaration,
        HashKeyMixin<SwidTopLevelStaticConstFieldDeclaration>,
        HashComparableMixin<SwidTopLevelStaticConstFieldDeclaration>
    implements
        ICopyable<
            SwidTopLevelStaticConstFieldDeclaration,
            $SwidTopLevelStaticConstFieldDeclarationCopyWith<
                SwidTopLevelStaticConstFieldDeclaration>> {
  SwidTopLevelStaticConstFieldDeclaration._();

  factory SwidTopLevelStaticConstFieldDeclaration({
    required final String originalPackagePath,
    required final SwidStaticConstFieldDeclaration declaration,
  }) = _$SwidTopLevelStaticConstFieldDeclarationCtor;

  factory SwidTopLevelStaticConstFieldDeclaration.fromJson(
          Map<String, dynamic> json) =>
      _$SwidTopLevelStaticConstFieldDeclarationFromJson(json);

  factory SwidTopLevelStaticConstFieldDeclaration._clone({
    required final SwidTopLevelStaticConstFieldDeclaration
        swidTopLevelStaticConstFieldDeclaration,
    final String? originalPackagePath,
    final SwidStaticConstFieldDeclaration? declaration,
  }) =>
      SwidTopLevelStaticConstFieldDeclaration(
        originalPackagePath: originalPackagePath ??
            swidTopLevelStaticConstFieldDeclaration.originalPackagePath,
        declaration:
            declaration ?? swidTopLevelStaticConstFieldDeclaration.declaration,
      );

  @override
  late final Iterable<Iterable<int>> hashableParts = (() sync* {
    yield* originalPackagePath.hashableParts;
    yield* declaration.hashKey.hashableParts;
  })();

  @override
  SwidTopLevelStaticConstFieldDeclaration clone({
    final String? originalPackagePath,
    final SwidStaticConstFieldDeclaration? declaration,
  }) =>
      SwidTopLevelStaticConstFieldDeclaration._clone(
        swidTopLevelStaticConstFieldDeclaration: this,
        originalPackagePath: originalPackagePath,
        declaration: declaration,
      );
}
