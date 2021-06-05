import 'package:freezed_annotation/freezed_annotation.dart';


part 'swidIntegerLiteral.freezed.dart';
part 'swidIntegerLiteral.g.dart';

@freezed
class SwidIntegerLiteral with _$SwidIntegerLiteral {
  const factory SwidIntegerLiteral({required String value}) = _$Data;

  factory SwidIntegerLiteral.fromJson(Map<String, dynamic> json) =>
      _$SwidIntegerLiteralFromJson(json);
}
