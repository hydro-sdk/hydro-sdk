import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'swidIntegerLiteral.freezed.dart';
part 'swidIntegerLiteral.g.dart';

@freezed
abstract class SwidIntegerLiteral with _$SwidIntegerLiteral {
  const factory SwidIntegerLiteral({required String value}) = _$Data;

  factory SwidIntegerLiteral.fromJson(Map<String, dynamic> json) =>
      _$SwidIntegerLiteralFromJson(json);
}
