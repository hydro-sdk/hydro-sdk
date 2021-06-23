import 'package:hydro_sdk/swid/frontend/dart/mapAnalyzerNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/dart/mapClassLibrarySourcePath.dart';
import 'package:hydro_sdk/swid/frontend/dart/narrowDartTypeToSwidType.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidInterfaceFromInterface.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidTypeFormalFromTypeParameterElement.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';

import 'package:analyzer/dart/element/type.dart'
    show FunctionType, InterfaceType;

SwidFunctionType swidFunctionTypeFromFunctionType(
        {required FunctionType functionType,
        required SwidDeclarationModifiers swidDeclarationModifiers,
        String? name}) =>
    SwidFunctionType(
        name: name ?? functionType.element?.name ?? "",
        nullabilitySuffix: mapNullabilitySuffix(
            nullabilitySuffix: functionType.nullabilitySuffix)!,
        originalPackagePath:
            functionType.element?.librarySource.uri.toString() ?? "",
        swidDeclarationModifiers: swidDeclarationModifiers,
        namedParameterTypes: Map.fromEntries(functionType
            .namedParameterTypes.keys
            .map((x) => MapEntry<String, SwidType>(
                x,
                narrowDartTypeToSwidType(
                    dartType: functionType.namedParameterTypes[x])))
            .where((x) => x != dartUnknownType)
            .toList()),
        namedDefaults: functionType.parameters.isNotEmpty
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
                              functionType: x.type as FunctionType,
                              swidDeclarationModifiers:
                                  SwidDeclarationModifiers.empty(),
                            ))
                          : x.type is InterfaceType
                              ? SwidType.fromSwidInterface(
                                  swidInterface: swidInterfaceFromInterface(
                                  interfaceType: x.type as InterfaceType,
                                ))
                              : dartUnknownType,
                    )))
                .toList()
                  ..removeWhere((x) => x.value.name == ""))
            : {},
        normalParameterNames: List.from(functionType.normalParameterNames),
        normalParameterTypes: List.from(functionType.normalParameterTypes
            .map((x) => narrowDartTypeToSwidType(dartType: x))
            .toList()),
        optionalParameterNames: List.from(functionType.optionalParameterNames),
        optionalParameterTypes: List.from(
            functionType.optionalParameterTypes.map((x) => narrowDartTypeToSwidType(dartType: x)).toList()),
        returnType: narrowDartTypeToSwidType(dartType: functionType.returnType),
        isFactory: false,
        typeFormals: functionType.typeFormals.isNotEmpty
            ? functionType.typeFormals
                .map(
                  (x) => swidTypeFormalFromTypeParameterElement(
                      typeParameterElement: x),
                )
                .toList()
            : []);
