import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';

part 'swidStaticConstFieldDeclaration.freezed.dart';
part 'swidStaticConstFieldDeclaration.g.dart';

@freezed
class SwidStaticConstFieldDeclaration with _$SwidStaticConstFieldDeclaration {
  const factory SwidStaticConstFieldDeclaration({
    required String name,
    required SwidStaticConst value,
  }) = _$Data;

  factory SwidStaticConstFieldDeclaration.fromJson(Map<String, dynamic> json) =>
      _$SwidStaticConstFieldDeclarationFromJson(json);

  factory SwidStaticConstFieldDeclaration.clone({
    required SwidStaticConstFieldDeclaration swidStaticConstFieldDeclaration,
    String? name,
    SwidStaticConst? value,
  }) =>
      SwidStaticConstFieldDeclaration(
        name: name ?? swidStaticConstFieldDeclaration.name,
        value: SwidStaticConst.clone(
          swidStaticConst: value ?? swidStaticConstFieldDeclaration.value,
        ),
      );
}
