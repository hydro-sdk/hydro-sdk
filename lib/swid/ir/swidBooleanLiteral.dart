import 'package:freezed_annotation/freezed_annotation.dart';

part 'swidBooleanLiteral.freezed.dart';
part 'swidBooleanLiteral.g.dart';

@freezed
class SwidBooleanLiteral with _$SwidBooleanLiteral {
  const factory SwidBooleanLiteral({
    required final String value,
  }) = _$Data;

  factory SwidBooleanLiteral.fromJson(Map<String, dynamic> json) =>
      _$SwidBooleanLiteralFromJson(json);

  factory SwidBooleanLiteral.clone({
    required final SwidBooleanLiteral swidBooleanLiteral,
    String? value,
  }) =>
      SwidBooleanLiteral(
        value: value ?? swidBooleanLiteral.value,
      );
}
