import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:analyzer/dart/element/type.dart'
    show FunctionType, InterfaceType;
import 'package:hydro_sdk/swid/ir/frontend/dart/cloneSwidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/mapAnalyzerNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/mapClassLibrarySourcePath.dart';

part 'swidFunctionType.freezed.dart';
part 'swidFunctionType.g.dart';

@freezed
abstract class SwidFunctionType with _$SwidFunctionType {
  factory SwidFunctionType({
    @required String name,
    @required SwidNullabilitySuffix nullabilitySuffix,
    @required String originalPackagePath,
    @required SwidDeclarationModifiers swidDeclarationModifiers,
    @required Map<String, SwidType> namedParameterTypes,
    @required Map<String, SwidDefaultFormalParameter> namedDefaults,
    @required List<String> normalParameterNames,
    @required List<SwidType> normalParameterTypes,
    @required List<String> optionalParameterNames,
    @required List<SwidType> optionalParameterTypes,
    @required SwidType returnType,
  }) = _$Data;

  factory SwidFunctionType.fromJson(Map<String, dynamic> json) =>
      _$SwidFunctionTypeFromJson(json);

  factory SwidFunctionType.MakeReceiverVoid(
          {@required SwidFunctionType swidFunctionType}) =>
      SwidFunctionType.clone(
        swidFunctionType: swidFunctionType,
        normalParameterNames: [
          "this",
          ...swidFunctionType.normalParameterNames
        ],
        normalParameterTypes: [
          SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
                  name: "void",
                  nullabilitySuffix: SwidNullabilitySuffix.none,
                  originalPackagePath: "")),
          ...swidFunctionType.normalParameterTypes
        ],
      );

  factory SwidFunctionType.InsertLeadingPositionalConstructorParameter(
          {@required SwidFunctionType swidFunctionType,
          @required String typeName,
          @required SwidType swidType}) =>
      SwidFunctionType.clone(
          swidFunctionType: swidFunctionType,
          normalParameterNames: [
            typeName,
            ...swidFunctionType.normalParameterNames
          ],
          normalParameterTypes: [
            swidType,
            ...swidFunctionType.normalParameterTypes
          ]);

  factory SwidFunctionType.clone({
    @required SwidFunctionType swidFunctionType,
    String name,
    SwidNullabilitySuffix nullabilitySuffix,
    String originalPackagePath,
    SwidDeclarationModifiers swidDeclarationModifiers,
    Map<String, SwidType> namedParameterTypes,
    Map<String, SwidDefaultFormalParameter> namedDefaults,
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
          nullabilitySuffix ?? swidFunctionType.originalPackagePath,
      swidDeclarationModifiers: swidDeclarationModifiers ??
          SwidDeclarationModifiers.clone(
              swidDeclarationModifiers:
                  swidFunctionType.swidDeclarationModifiers ?? []),
      namedParameterTypes: namedParameterTypes ??
          Map.from(swidFunctionType.namedParameterTypes ?? {}),
      namedDefaults:
          namedDefaults ?? Map.from(swidFunctionType.namedDefaults ?? {}),
      normalParameterNames: normalParameterNames ??
          List.from(swidFunctionType.normalParameterNames ?? []),
      normalParameterTypes: normalParameterTypes ??
          List.from(swidFunctionType.normalParameterTypes ?? []),
      optionalParameterNames: optionalParameterNames ??
          List.from(swidFunctionType.optionalParameterNames ?? []),
      optionalParameterTypes: optionalParameterTypes ??
          List.from(swidFunctionType.optionalParameterTypes ?? []),
      returnType:
          returnType ?? cloneSwidType(swidType: swidFunctionType.returnType),
    );
  }

  factory SwidFunctionType.fromFunctionType(
      {@required FunctionType functionType,
      @required SwidDeclarationModifiers swidDeclarationModifiers}) {
    return SwidFunctionType(
      name: functionType.element?.name ?? "",
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
                    ? SwidType.fromSwidFunctionType(
                        swidFunctionType: SwidFunctionType.fromFunctionType(
                        functionType: functionType?.namedParameterTypes[x],
                        swidDeclarationModifiers:
                            SwidDeclarationModifiers.empty(),
                      ))
                    : functionType?.namedParameterTypes[x] is InterfaceType
                        ? SwidType.fromSwidInterface(
                            swidInterface: SwidInterface(
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
                          ))
                        : null,
              ))),
      namedDefaults: functionType?.parameters != null
          ? Map.fromEntries(functionType.parameters
              .map((x) => MapEntry<String, SwidDefaultFormalParameter>(
                  x.displayName,
                  SwidDefaultFormalParameter(
                    name: x.defaultValueCode ?? "",
                    nullabilitySuffix: SwidNullabilitySuffix.none,
                    originalPackagePath: mapClassLibrarySourcePath(element: x),
                    value: x.type is FunctionType
                        ? SwidType.fromSwidFunctionType(
                            swidFunctionType: SwidFunctionType.fromFunctionType(
                            functionType: x.type,
                            swidDeclarationModifiers:
                                SwidDeclarationModifiers.empty(),
                          ))
                        : x.type is InterfaceType
                            ? SwidType.fromSwidInterface(
                                swidInterface: SwidInterface.fromInterface(
                                interfaceType: x.type,
                              ))
                            : null,
                  )))
              .toList()
                ..removeWhere((x) => x.value.name == ""))
          : {},
      normalParameterNames: List.from(functionType.normalParameterNames ?? []),
      normalParameterTypes: List.from(functionType.normalParameterTypes
              ?.map(
                (x) => x is FunctionType
                    ? SwidType.fromSwidFunctionType(
                        swidFunctionType: SwidFunctionType.fromFunctionType(
                        functionType: x,
                        swidDeclarationModifiers:
                            SwidDeclarationModifiers.empty(),
                      ))
                    : x is InterfaceType
                        ? SwidType.fromSwidInterface(
                            swidInterface: SwidInterface(
                            name: x.element?.name,
                            nullabilitySuffix: mapNullabilitySuffix(
                                nullabilitySuffix: x?.nullabilitySuffix),
                            originalPackagePath:
                                x?.element?.librarySource?.uri?.toString(),
                          ))
                        : null,
              )
              ?.toList() ??
          []),
      optionalParameterNames:
          List.from(functionType.optionalParameterNames ?? []),
      optionalParameterTypes: List.from(functionType.optionalParameterTypes
              ?.map(
                (x) => x is FunctionType
                    ? SwidType.fromSwidFunctionType(
                        swidFunctionType: SwidFunctionType.fromFunctionType(
                        functionType: x,
                        swidDeclarationModifiers:
                            SwidDeclarationModifiers.empty(),
                      ))
                    : x is InterfaceType
                        ? SwidType.fromSwidInterface(
                            swidInterface: SwidInterface(
                            name: x.element?.name,
                            nullabilitySuffix: mapNullabilitySuffix(
                                nullabilitySuffix: x.nullabilitySuffix),
                            originalPackagePath:
                                x.element.librarySource.uri.toString(),
                          ))
                        : null,
              )
              ?.toList() ??
          []),
      returnType: functionType.returnType is FunctionType
          ? SwidType.fromSwidFunctionType(
              swidFunctionType: SwidFunctionType.fromFunctionType(
              functionType: functionType.returnType,
              swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
            ))
          : SwidType.fromSwidInterface(
              swidInterface: SwidInterface(
              name: functionType.returnType.element?.name ??
                  functionType.returnType
                      ?.getDisplayString(withNullability: false),
              nullabilitySuffix: mapNullabilitySuffix(
                  nullabilitySuffix: functionType.nullabilitySuffix),
              originalPackagePath: functionType
                      ?.returnType?.element?.librarySource?.uri
                      ?.toString() ??
                  "",
            )),
    );
  }
}
