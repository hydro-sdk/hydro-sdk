import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:analyzer/dart/element/type.dart'
    show FunctionType, InterfaceType;
import 'package:hydro_sdk/swid/ir/cloneSwidType.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/mapAnalyzerNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';

part 'swidFunctionType.g.dart';

@JsonSerializable()
class SwidFunctionType implements SwidType {
  final String name;
  final SwidNullabilitySuffix nullabilitySuffix;
  final String originalPackagePath;
  final SwidDeclarationModifiers swidDeclarationModifiers;

  final Map<String, SwidType> namedParameterTypes;
  final List<String> normalParameterNames;
  final List<SwidType> normalParameterTypes;
  final List<String> optionalParameterNames;
  final List<SwidType> optionalParameterTypes;
  final SwidType returnType;

  SwidFunctionType({
    @required this.name,
    @required this.nullabilitySuffix,
    @required this.originalPackagePath,
    @required this.swidDeclarationModifiers,
    @required this.namedParameterTypes,
    @required this.normalParameterNames,
    @required this.normalParameterTypes,
    @required this.optionalParameterNames,
    @required this.optionalParameterTypes,
    @required this.returnType,
  });

  Map<String, dynamic> toJson() => _$SwidFunctionTypeToJson(this);

  factory SwidFunctionType.fromJson(Map<String, dynamic> json) =>
      _$SwidFunctionTypeFromJson(json);

  factory SwidFunctionType.clone({
    @required SwidFunctionType swidFunctionType,
    String name,
    SwidNullabilitySuffix nullabilitySuffix,
    String originalPackagePath,
    SwidDeclarationModifiers swidDeclarationModifiers,
    Map<String, SwidType> namedParameterTypes,
    List<String> normalParameterNames,
    List<SwidType> normalParameterTypes,
    List<String> optionalParameterNames,
    List<SwidType> optionalParameterTypes,
    SwidType returnType,
  }) {
    return SwidFunctionType(
      name: name ?? swidFunctionType.name,
      nullabilitySuffix:
          nullabilitySuffix ?? swidFunctionType.nullabilitySuffix,
      originalPackagePath:
          originalPackagePath ?? swidFunctionType.originalPackagePath,
      swidDeclarationModifiers: swidDeclarationModifiers ??
          SwidDeclarationModifiers.clone(
              swidDeclarationModifiers:
                  swidFunctionType.swidDeclarationModifiers),
      namedParameterTypes:
          namedParameterTypes ?? Map.from(swidFunctionType.namedParameterTypes),
      normalParameterNames: normalParameterNames ??
          List.from(swidFunctionType.normalParameterNames),
      normalParameterTypes: normalParameterNames ??
          List.from(swidFunctionType.normalParameterTypes),
      optionalParameterNames: optionalParameterNames ??
          List.from(swidFunctionType.optionalParameterNames),
      optionalParameterTypes: optionalParameterTypes ??
          List.from(swidFunctionType.optionalParameterTypes),
      returnType:
          returnType ?? cloneSwidType(swidType: swidFunctionType.returnType),
    );
  }

  factory SwidFunctionType.fromFunctionType(
      {@required FunctionType functionType,
      @required SwidDeclarationModifiers swidDeclarationModifiers}) {
    return SwidFunctionType(
      name: functionType.element?.name,
      nullabilitySuffix: mapNullabilitySuffix(
          nullabilitySuffix: functionType.nullabilitySuffix),
      originalPackagePath:
          functionType.element?.librarySource?.uri?.toString() ?? "",
      swidDeclarationModifiers: swidDeclarationModifiers,
      namedParameterTypes: Map.fromEntries(functionType
          ?.namedParameterTypes?.keys
          ?.map((x) => MapEntry<String, SwidType>(
                x,
                functionType?.namedParameterTypes[x] is FunctionType
                    ? SwidFunctionType.fromFunctionType(
                        functionType: functionType?.namedParameterTypes[x],
                        swidDeclarationModifiers:
                            SwidDeclarationModifiers.empty(),
                      )
                    : functionType?.namedParameterTypes[x] is InterfaceType
                        ? SwidType(
                            name:
                                functionType?.namedParameterTypes[x].toString(),
                            nullabilitySuffix: mapNullabilitySuffix(
                                nullabilitySuffix: functionType
                                    ?.namedParameterTypes[x].nullabilitySuffix),
                            originalPackagePath: functionType
                                    ?.namedParameterTypes[x]
                                    ?.element
                                    ?.librarySource
                                    ?.uri
                                    ?.toString() ??
                                "",
                          )
                        : null,
              ))),
      normalParameterNames: List.from(functionType.normalParameterNames ?? []),
      normalParameterTypes: List.from(functionType.normalParameterTypes
              ?.map(
                (x) => x is FunctionType
                    ? SwidFunctionType.fromFunctionType(
                        functionType: x,
                        swidDeclarationModifiers:
                            SwidDeclarationModifiers.empty(),
                      )
                    : x is InterfaceType
                        ? SwidType(
                            name: x.element?.name,
                            nullabilitySuffix: mapNullabilitySuffix(
                                nullabilitySuffix: x?.nullabilitySuffix),
                            originalPackagePath:
                                x?.element?.librarySource?.uri?.toString(),
                          )
                        : null,
              )
              ?.toList() ??
          []),
      optionalParameterNames:
          List.from(functionType.optionalParameterNames ?? []),
      optionalParameterTypes: List.from(functionType.optionalParameterTypes
              ?.map(
                (x) => x is FunctionType
                    ? SwidFunctionType.fromFunctionType(
                        functionType: x,
                        swidDeclarationModifiers:
                            SwidDeclarationModifiers.empty(),
                      )
                    : x is InterfaceType
                        ? SwidType(
                            name: x.element?.name,
                            nullabilitySuffix: mapNullabilitySuffix(
                                nullabilitySuffix: x.nullabilitySuffix),
                            originalPackagePath:
                                x.element.librarySource.uri.toString(),
                          )
                        : null,
              )
              ?.toList() ??
          []),
      returnType: functionType.returnType is FunctionType
          ? SwidFunctionType.fromFunctionType(
              functionType: functionType.returnType,
              swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
            )
          : SwidType(
              name: functionType.returnType.element?.name ??
                  functionType.returnType?.getDisplayString(),
              nullabilitySuffix: mapNullabilitySuffix(
                  nullabilitySuffix: functionType.nullabilitySuffix),
              originalPackagePath: functionType
                      ?.returnType?.element?.librarySource?.uri
                      ?.toString() ??
                  "",
            ),
    );
  }
}
