import 'package:freezed_annotation/freezed_annotation.dart';

part 'swidDoubleLiteral.freezed.dart';
part 'swidDoubleLiteral.g.dart';

@freezed
class SwidDoubleLiteral with _$SwidDoubleLiteral {
  const factory SwidDoubleLiteral({
    required final String value,
  }) = _$Data;

  factory SwidDoubleLiteral.fromJson(Map<String, dynamic> json) =>
      _$SwidDoubleLiteralFromJson(json);

  factory SwidDoubleLiteral.clone({
    required final SwidDoubleLiteral swidDoubleLiteral,
    String? value,
  }) =>
      SwidDoubleLiteral(
        value: value ?? swidDoubleLiteral.value,
      );
}
