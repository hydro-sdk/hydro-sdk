import 'package:hydro_sdk/swid/ir/swidLiteral.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'swidBooleanLiteral.g.dart';

@JsonSerializable()
class SwidBooleanLiteral implements SwidLiteral {
  final String value;

  SwidBooleanLiteral({@required this.value});

  Map<String, dynamic> toJson() => _$SwidBooleanLiteralToJson(this);

  factory SwidBooleanLiteral.fromJson(Map<String, dynamic> json) =>
      _$SwidBooleanLiteralFromJson(json);
}
