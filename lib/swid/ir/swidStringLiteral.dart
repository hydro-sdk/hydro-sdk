import 'package:freezed_annotation/freezed_annotation.dart';

part 'swidStringLiteral.freezed.dart';
part 'swidStringLiteral.g.dart';

@freezed
class SwidStringLiteral with _$SwidStringLiteral {
  const factory SwidStringLiteral({required String value}) = _$Data;

  factory SwidStringLiteral.fromJson(Map<String, dynamic> json) =>
      _$SwidStringLiteralFromJson(json);
}
