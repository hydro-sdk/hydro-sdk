import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:analyzer/dart/element/type.dart' show InterfaceType;
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/mapAnalyzerNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/mapClassLibrarySourcePath.dart';

part 'swidType.g.dart';

@JsonSerializable()
class SwidType {
  final String name;
  final SwidNullabilitySuffix nullabilitySuffix;
  final String originalPackagePath;

  SwidType({
    @required this.name,
    @required this.nullabilitySuffix,
    @required this.originalPackagePath,
  });

  Map<String, dynamic> toJson() => _$SwidTypeToJson(this);

  factory SwidType.fromJson(Map<String, dynamic> json) =>
      _$SwidTypeFromJson(json);

  factory SwidType.clone({@required SwidType swidType}) => SwidType(
      name: swidType.name,
      nullabilitySuffix: swidType.nullabilitySuffix,
      originalPackagePath: swidType.originalPackagePath);

  factory SwidType.fromInterface({@required InterfaceType interfaceType}) =>
      SwidType(
          name: interfaceType.getDisplayString(withNullability: false),
          nullabilitySuffix: mapNullabilitySuffix(
              nullabilitySuffix: interfaceType.nullabilitySuffix),
          originalPackagePath:
              mapClassLibrarySourcePath(element: interfaceType.element));
}
