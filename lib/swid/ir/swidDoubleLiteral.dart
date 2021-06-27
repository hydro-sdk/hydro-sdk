import 'package:freezed_annotation/freezed_annotation.dart';

part 'swidDoubleLiteral.freezed.dart';
part 'swidDoubleLiteral.g.dart';

@freezed
class SwidDoubleLiteral with _$SwidDoubleLiteral {
  const factory SwidDoubleLiteral({required String value}) = _$Data;

  factory SwidDoubleLiteral.fromJson(Map<String, dynamic> json) =>
      _$SwidDoubleLiteralFromJson(json);
}
