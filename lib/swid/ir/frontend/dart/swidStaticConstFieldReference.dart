import 'package:analyzer/dart/ast/ast.dart' show SimpleIdentifier;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'swidStaticConstFieldReference.freezed.dart';
part 'swidStaticConstFieldReference.g.dart';

@freezed
abstract class SwidStaticConstFieldReference
    with _$SwidStaticConstFieldReference {
  factory SwidStaticConstFieldReference({@required String name}) = _$Data;

  factory SwidStaticConstFieldReference.fromJson(Map<String, dynamic> json) =>
      _$SwidStaticConstFieldReferenceFromJson(json);

  factory SwidStaticConstFieldReference.fromSimpleIdentifier(
          {@required SimpleIdentifier simpleIdentifier}) =>
      SwidStaticConstFieldReference(name: simpleIdentifier.name);
}
