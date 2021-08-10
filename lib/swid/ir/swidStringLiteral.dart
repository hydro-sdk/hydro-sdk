import 'package:freezed_annotation/freezed_annotation.dart';

part 'swidStringLiteral.freezed.dart';
part 'swidStringLiteral.g.dart';

@freezed
class SwidStringLiteral with _$SwidStringLiteral {
  const factory SwidStringLiteral({
    required final String value,
  }) = _$Data;

  factory SwidStringLiteral.fromJson(Map<String, dynamic> json) =>
      _$SwidStringLiteralFromJson(json);

  factory SwidStringLiteral.clone({
    required final SwidStringLiteral swidStringLiteral,
    String? value,
  }) =>
      SwidStringLiteral(
        value: value ?? swidStringLiteral.value,
      );
}
