import 'package:analyzer/dart/ast/ast.dart' show DoubleLiteral;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'swidDoubleLiteral.freezed.dart';
part 'swidDoubleLiteral.g.dart';

@freezed
abstract class SwidDoubleLiteral with _$SwidDoubleLiteral {
  factory SwidDoubleLiteral({@required String value}) = _$Data;

  factory SwidDoubleLiteral.fromJson(Map<String, dynamic> json) =>
      _$SwidDoubleLiteralFromJson(json);

  factory SwidDoubleLiteral.fromDoubleLiteral(
          {@required DoubleLiteral doubleLiteral}) =>
      SwidDoubleLiteral(value: doubleLiteral.literal.lexeme);
}
