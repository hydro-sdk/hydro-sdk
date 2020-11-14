import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:meta/meta.dart';
import 'package:analyzer/dart/element/type.dart'
    show InterfaceType, TypeParameterType;
import 'package:hydro_sdk/swid/ir/frontend/dart/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/mapAnalyzerNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/mapClassLibrarySourcePath.dart';

part 'swidInterface.freezed.dart';
part 'swidInterface.g.dart';

@freezed
abstract class SwidInterface with _$SwidInterface {
  factory SwidInterface({
    @required String name,
    @required SwidNullabilitySuffix nullabilitySuffix,
    @required String originalPackagePath,
    @required List<SwidType> typeArguments,
  }) = _$Data;

  factory SwidInterface.fromJson(Map<String, dynamic> json) =>
      _$SwidInterfaceFromJson(json);

  factory SwidInterface.clone({
    @required SwidInterface swidType,
    String name,
    SwidNullabilitySuffix nullabilitySuffix,
    String originalPackagePath,
    List<SwidType> typeArguments,
  }) =>
      SwidInterface(
          name: name ?? swidType.name,
          nullabilitySuffix: nullabilitySuffix ?? swidType.nullabilitySuffix,
          originalPackagePath:
              originalPackagePath ?? swidType.originalPackagePath,
          typeArguments:
              typeArguments ?? List.from(swidType.typeArguments ?? []));

  factory SwidInterface.fromInterface(
          {@required InterfaceType interfaceType}) =>
      SwidInterface(
          name: interfaceType.getDisplayString(withNullability: false),
          typeArguments: interfaceType.typeArguments
              .map((x) => x is InterfaceType
                  ? SwidType.fromSwidInterface(
                      swidInterface:
                          SwidInterface.fromInterface(interfaceType: x))
                  : x is TypeParameterType
                      ? SwidType.fromSwidInterface(
                          swidInterface: SwidInterface.fromTypeParameterType(
                              typeParameterType: x))
                      : null)
              .toList(),
          nullabilitySuffix: mapNullabilitySuffix(
              nullabilitySuffix: interfaceType.nullabilitySuffix),
          originalPackagePath:
              mapClassLibrarySourcePath(element: interfaceType.element));

  factory SwidInterface.fromTypeParameterType(
          {@required TypeParameterType typeParameterType}) =>
      SwidInterface(
          name: typeParameterType.getDisplayString(withNullability: true),
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath:
              mapClassLibrarySourcePath(element: typeParameterType.element),
          typeArguments: []);
}
