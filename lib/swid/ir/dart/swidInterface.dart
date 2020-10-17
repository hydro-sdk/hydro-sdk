import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:analyzer/dart/element/type.dart' show InterfaceType;
import 'package:hydro_sdk/swid/ir/dart/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/dart/mapAnalyzerNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/dart/mapClassLibrarySourcePath.dart';

part 'swidInterface.freezed.dart';
part 'swidInterface.g.dart';

@freezed
abstract class SwidInterface with _$SwidInterface {
  factory SwidInterface({
    @required String name,
    @required SwidNullabilitySuffix nullabilitySuffix,
    @required String originalPackagePath,
  }) = _$Data;

  factory SwidInterface.fromJson(Map<String, dynamic> json) =>
      _$SwidInterfaceFromJson(json);

  factory SwidInterface.clone({
    @required SwidInterface swidType,
    String name,
    SwidNullabilitySuffix nullabilitySuffix,
    String originalPackagePath,
  }) =>
      SwidInterface(
        name: name ?? swidType.name,
        nullabilitySuffix: nullabilitySuffix ?? swidType.nullabilitySuffix,
        originalPackagePath:
            originalPackagePath ?? swidType.originalPackagePath,
      );

  factory SwidInterface.fromInterface(
          {@required InterfaceType interfaceType}) =>
      SwidInterface(
          name: interfaceType.getDisplayString(withNullability: false),
          nullabilitySuffix: mapNullabilitySuffix(
              nullabilitySuffix: interfaceType.nullabilitySuffix),
          originalPackagePath:
              mapClassLibrarySourcePath(element: interfaceType.element));
}
