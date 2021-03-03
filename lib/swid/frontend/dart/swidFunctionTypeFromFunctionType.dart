import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidInterfaceFromInterface.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/util/mapAnalyzerNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/dart/mapClassLibrarySourcePath.dart';
import 'package:hydro_sdk/swid/frontend/dart/narrowDartTypeToSwidType.dart';

import 'package:analyzer/dart/element/type.dart'
    show FunctionType, InterfaceType;
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';

SwidFunctionType swidFunctionTypeFromFunctionType(
        {@required FunctionType functionType,
        @required SwidDeclarationModifiers swidDeclarationModifiers,
        String name}) =>
    SwidFunctionType(
        name: name ?? functionType.element?.name ?? "",
        nullabilitySuffix: mapNullabilitySuffix(
            nullabilitySuffix: functionType.nullabilitySuffix),
        originalPackagePath:
            functionType.element?.librarySource?.uri?.toString() ?? "",
        swidDeclarationModifiers: swidDeclarationModifiers,
        namedParameterTypes: Map.fromEntries(functionType?.namedParameterTypes?.keys
            ?.map((x) => MapEntry<String, SwidType>(
                x,
                narrowDartTypeToSwidType(
                    dartType: functionType?.namedParameterTypes[x])))),
        namedDefaults: functionType?.parameters != null
            ? Map.fromEntries(functionType.parameters
                .map((x) => MapEntry<String, SwidDefaultFormalParameter>(
                    x.displayName,
                    SwidDefaultFormalParameter(
                      name: x.defaultValueCode ?? "",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath:
                          mapClassLibrarySourcePath(element: x),
                      value: x.type is FunctionType
                          ? SwidType.fromSwidFunctionType(
                              swidFunctionType:
                                  swidFunctionTypeFromFunctionType(
                              functionType: x.type,
                              swidDeclarationModifiers:
                                  SwidDeclarationModifiers.empty(),
                            ))
                          : x.type is InterfaceType
                              ? SwidType.fromSwidInterface(
                                  swidInterface: swidInterfaceFromInterface(
                                  interfaceType: x.type,
                                ))
                              : null,
                    )))
                .toList()
                  ..removeWhere((x) => x.value.name == ""))
            : {},
        normalParameterNames:
            List.from(functionType.normalParameterNames ?? []),
        normalParameterTypes: List.from(
            functionType.normalParameterTypes?.map((x) => narrowDartTypeToSwidType(dartType: x))?.toList() ?? []),
        optionalParameterNames: List.from(functionType.optionalParameterNames ?? []),
        optionalParameterTypes: List.from(functionType.optionalParameterTypes?.map((x) => narrowDartTypeToSwidType(dartType: x))?.toList() ?? []),
        returnType: narrowDartTypeToSwidType(dartType: functionType.returnType),
        isFactory: false,
        typeFormals: functionType.typeFormals != null
            ? functionType.typeFormals
                .map(
                  (x) => SwidTypeFormal.fromTypeParameterElement(
                      typeParameterElement: x),
                )
                .toList()
            : []);
