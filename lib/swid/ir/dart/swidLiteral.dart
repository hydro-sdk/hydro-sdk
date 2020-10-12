import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'swidLiteral.g.dart';

@JsonSerializable()
class SwidLiteral {
  final String value;

  SwidLiteral({@required this.value});

  Map<String, dynamic> toJson() => _$SwidLiteralToJson(this);

  factory SwidLiteral.fromJson(Map<String, dynamic> json) =>
      _$SwidLiteralFromJson(json);
}
