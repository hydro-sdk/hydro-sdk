import 'package:freezed_annotation/freezed_annotation.dart';

part 'swidIntegerLiteral.freezed.dart';
part 'swidIntegerLiteral.g.dart';

@freezed
class SwidIntegerLiteral with _$SwidIntegerLiteral {
  const factory SwidIntegerLiteral({
    required final String value,
  }) = _$Data;

  factory SwidIntegerLiteral.fromJson(Map<String, dynamic> json) =>
      _$SwidIntegerLiteralFromJson(json);

  factory SwidIntegerLiteral.clone({
    required final SwidIntegerLiteral swidIntegerLiteral,
    String? value,
  }) =>
      SwidIntegerLiteral(
        value: value ?? swidIntegerLiteral.value,
      );
}
