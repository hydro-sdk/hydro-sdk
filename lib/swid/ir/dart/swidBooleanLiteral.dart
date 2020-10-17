import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'swidBooleanLiteral.freezed.dart';
part 'swidBooleanLiteral.g.dart';

@freezed
abstract class SwidBooleanLiteral with _$SwidBooleanLiteral {
  factory SwidBooleanLiteral({@required String value}) = _$Data;

  factory SwidBooleanLiteral.fromJson(Map<String, dynamic> json) =>
      _$SwidBooleanLiteralFromJson(json);
}
