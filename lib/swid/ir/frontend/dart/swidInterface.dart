import 'package:analyzer/dart/element/element.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:meta/meta.dart';
import 'package:analyzer/dart/element/type.dart'
    show InterfaceType, TypeParameterType, VoidType, DynamicType;
import 'package:analyzer/src/dart/element/element.dart' show EnumElementImpl;
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
    @required SwidReferenceDeclarationKind referenceDeclarationKind,
  }) = _$Data;

  factory SwidInterface.fromJson(Map<String, dynamic> json) =>
      _$SwidInterfaceFromJson(json);

  factory SwidInterface.clone(
          {@required SwidInterface swidType,
          String name,
          SwidNullabilitySuffix nullabilitySuffix,
          String originalPackagePath,
          List<SwidType> typeArguments,
          SwidReferenceDeclarationKind referenceDeclarationKind}) =>
      SwidInterface(
        name: name ?? swidType.name,
        nullabilitySuffix: nullabilitySuffix ?? swidType.nullabilitySuffix,
        originalPackagePath:
            originalPackagePath ?? swidType.originalPackagePath,
        typeArguments: typeArguments ?? List.from(swidType.typeArguments ?? []),
        referenceDeclarationKind:
            referenceDeclarationKind ?? swidType.referenceDeclarationKind,
      );

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
            mapClassLibrarySourcePath(element: interfaceType.element),
        referenceDeclarationKind: interfaceType.element is ClassElement
            ? SwidReferenceDeclarationKind.classElement
            : interfaceType.element is EnumElementImpl
                ? SwidReferenceDeclarationKind.enumElement
                : null,
      );

  factory SwidInterface.fromVoidType({@required VoidType voidType}) =>
      SwidInterface(
          name: "void",
          nullabilitySuffix: SwidNullabilitySuffix.none,
          originalPackagePath: "",
          typeArguments: [],
          referenceDeclarationKind: SwidReferenceDeclarationKind.voidType);

  factory SwidInterface.fromTypeParameterType(
          {@required TypeParameterType typeParameterType}) =>
      SwidInterface(
        name: typeParameterType.element?.name ??
            typeParameterType?.getDisplayString(withNullability: false),
        typeArguments: [],
        nullabilitySuffix: mapNullabilitySuffix(
            nullabilitySuffix: typeParameterType.nullabilitySuffix),
        originalPackagePath:
            typeParameterType.element?.librarySource?.uri?.toString() ?? "",
        referenceDeclarationKind:
            SwidReferenceDeclarationKind.typeParameterType,
      );

  factory SwidInterface.fromDynamicType({@required DynamicType dynamicType}) =>
      SwidInterface(
        name: dynamicType.element?.name ??
            dynamicType?.getDisplayString(withNullability: false),
        typeArguments: [],
        nullabilitySuffix: mapNullabilitySuffix(
            nullabilitySuffix: dynamicType.nullabilitySuffix),
        originalPackagePath:
            dynamicType.element?.librarySource?.uri?.toString() ?? "",
        referenceDeclarationKind: SwidReferenceDeclarationKind.dynamicType,
      );
}
