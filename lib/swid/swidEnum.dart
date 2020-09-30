import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

part 'swidEnum.g.dart';

@JsonSerializable()
class SwidEnum {
  final String originalPackagePath;
  final String identifier;
  final List<String> children;

  SwidEnum({
    @required this.originalPackagePath,
    @required this.identifier,
    @required this.children,
  });

  Map<String, dynamic> toJson() => _$SwidEnumToJson(this);

  factory SwidEnum.fromJson(Map<String, dynamic> json) =>
      _$SwidEnumFromJson(json);
}
