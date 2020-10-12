import 'package:hydro_sdk/swid/ir/dart/swidLiteral.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'swidStringLiteral.g.dart';

@JsonSerializable()
class SwidStringLiteral implements SwidLiteral {
  final String value;

  SwidStringLiteral({@required this.value});

  Map<String, dynamic> toJson() => _$SwidStringLiteralToJson(this);

  factory SwidStringLiteral.fromJson(Map<String, dynamic> json) =>
      _$SwidStringLiteralFromJson(json);
}
