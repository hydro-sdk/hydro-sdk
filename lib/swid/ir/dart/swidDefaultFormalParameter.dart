import 'package:hydro_sdk/swid/ir/dart/cloneSwidType.dart';
import 'package:hydro_sdk/swid/ir/dart/swidType.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:hydro_sdk/swid/ir/dart/swidNullabilitySuffix.dart';

part 'swidDefaultFormalParameter.g.dart';

@JsonSerializable()
class SwidDefaultFormalParameter implements SwidType {
  final String name;
  final SwidNullabilitySuffix nullabilitySuffix;
  final String originalPackagePath;
  final SwidType value;

  SwidDefaultFormalParameter({
    @required this.name,
    @required this.nullabilitySuffix,
    @required this.originalPackagePath,
    @required this.value,
  });

  Map<String, dynamic> toJson() => _$SwidDefaultFormalParameterToJson(this);

  factory SwidDefaultFormalParameter.fromJson(Map<String, dynamic> json) =>
      _$SwidDefaultFormalParameterFromJson(json);

  factory SwidDefaultFormalParameter.clone(
          {@required SwidDefaultFormalParameter swidType}) =>
      SwidDefaultFormalParameter(
        name: swidType.name,
        nullabilitySuffix: swidType.nullabilitySuffix,
        originalPackagePath: swidType.originalPackagePath,
        value: cloneSwidType(swidType: swidType.value),
      );
}
