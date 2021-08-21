import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidStaticConstFieldDeclaration.dart';

part 'swidTopLevelStaticConstFieldDeclaration.freezed.dart';
part 'swidTopLevelStaticConstFieldDeclaration.g.dart';

@freezed
class SwidTopLevelStaticConstFieldDeclaration
    with _$SwidTopLevelStaticConstFieldDeclaration {
  const SwidTopLevelStaticConstFieldDeclaration._();

  const factory SwidTopLevelStaticConstFieldDeclaration({
    required final String originalPackagePath,
    required final SwidStaticConstFieldDeclaration declaration,
  }) = _$SwidTopLevelStaticConstFieldDeclarationCtor;

  factory SwidTopLevelStaticConstFieldDeclaration.fromJson(
          Map<String, dynamic> json) =>
      _$SwidTopLevelStaticConstFieldDeclarationFromJson(json);
}
