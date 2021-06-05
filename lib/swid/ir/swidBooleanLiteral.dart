import 'package:freezed_annotation/freezed_annotation.dart';


part 'swidBooleanLiteral.freezed.dart';
part 'swidBooleanLiteral.g.dart';

@freezed
class SwidBooleanLiteral with _$SwidBooleanLiteral {
  const factory SwidBooleanLiteral({required String value}) = _$Data;

  factory SwidBooleanLiteral.fromJson(Map<String, dynamic> json) =>
      _$SwidBooleanLiteralFromJson(json);
}
