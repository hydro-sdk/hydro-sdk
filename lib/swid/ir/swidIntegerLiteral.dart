import 'package:analyzer/dart/ast/ast.dart' show IntegerLiteral;
import 'package:hydro_sdk/swid/ir/swidLiteral.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'swidIntegerLiteral.g.dart';

@JsonSerializable()
class SwidIntegerLiteral implements SwidLiteral {
  final String value;

  SwidIntegerLiteral({@required this.value});

  Map<String, dynamic> toJson() => _$SwidIntegerLiteralToJson(this);

  factory SwidIntegerLiteral.fromJson(Map<String, dynamic> json) =>
      _$SwidIntegerLiteralFromJson(json);

  factory SwidIntegerLiteral.fromIntegerLiteral(
          {@required IntegerLiteral integerLiteral}) =>
      SwidIntegerLiteral(value: integerLiteral.literal.lexeme);
}
