import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'swidStringLiteral.freezed.dart';
part 'swidStringLiteral.g.dart';

@freezed
abstract class SwidStringLiteral with _$SwidStringLiteral {
  const factory SwidStringLiteral({required String value}) = _$Data;

  factory SwidStringLiteral.fromJson(Map<String, dynamic> json) =>
      _$SwidStringLiteralFromJson(json);
}
