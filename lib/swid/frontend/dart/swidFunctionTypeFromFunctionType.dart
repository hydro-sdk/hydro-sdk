import 'package:analyzer/dart/element/element.dart';
import 'package:collection/collection.dart';

import 'package:hydro_sdk/swid/frontend/dart/dartDefaultFieldFormalOrDefaultFormal.dart';
import 'package:hydro_sdk/swid/frontend/dart/extractStaticConstFromSyntacticEntity.dart';
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

import 'package:analyzer/src/dart/element/element.dart'
    show
        DefaultFieldFormalParameterElementImpl,
        DefaultParameterElementImpl,
        ParameterElementImpl;

import 'package:analyzer/dart/element/type.dart'
    show FunctionType, InterfaceType;

SwidFunctionType swidFunctionTypeFromFunctionType({
  required final FunctionType functionType,
  required final SwidDeclarationModifiers declarationModifiers,
  required final bool buildElements,
  String? name,
}) =>
    SwidFunctionType(
      name: name ?? functionType.element?.name ?? "",
      nullabilitySuffix: mapNullabilitySuffix(
        nullabilitySuffix: functionType.nullabilitySuffix,
      )!,
      originalPackagePath:
          functionType.element?.librarySource.uri.toString() ?? "",
      declarationModifiers: declarationModifiers,
      namedParameterTypes: Map.fromEntries(
        functionType.namedParameterTypes.keys
            .map(
              (x) => MapEntry<String, SwidType>(
                x,
                narrowDartTypeToSwidType(
                  dartType: functionType.namedParameterTypes[x],
                  buildElements: true,
                ),
              ),
            )
            .where((x) => x != dartUnknownType)
            .toList(),
      ),
      namedDefaults: (({
        required final List<DartDefaultFieldFormalOrDefaultFormal>
            defaultParameters,
      }) =>
          defaultParameters.isNotEmpty
              ? Map.fromEntries(defaultParameters
                  .map((x) => MapEntry<String, SwidDefaultFormalParameter>(
                      x.displayName,
                      SwidDefaultFormalParameter(
                        nullabilitySuffix: SwidNullabilitySuffix.none,
                        originalPackagePath:
                            mapClassLibrarySourcePath(element: x.asElement),
                        defaultValueCode: x.defaultValueCode,
                        value: x.constantInitializer != null
                            ? extractStaticConstFromSyntacticEntity(
                                syntacticEntity: x.constantInitializer!,
                                buildElements: true,
                              )
                            : dartUnknownConst,
                        staticType: x.type is FunctionType
                            ? SwidType.fromSwidFunctionType(
                                swidFunctionType:
                                    swidFunctionTypeFromFunctionType(
                                buildElements: buildElements,
                                functionType: x.type as FunctionType,
                                declarationModifiers:
                                    SwidDeclarationModifiers.empty(),
                              ))
                            : x.type is InterfaceType
                                ? SwidType.fromSwidInterface(
                                    swidInterface: swidInterfaceFromInterface(
                                      interfaceType: x.type as InterfaceType,
                                      buildElements: true,
                                    ),
                                  )
                                : dartUnknownType,
                      )))
                  .toList()
                    ..removeWhere(
                      (x) =>
                          x.key == "" ||
                          x.value == dartUnknownConst ||
                          x.value.value == dartUnknownConst,
                    ))
              : <String, SwidDefaultFormalParameter>{})(
        defaultParameters: functionType.parameters
            .map(
              (x) => x is DefaultFieldFormalParameterElementImpl
                  ? DartDefaultFieldFormalOrDefaultFormal
                      .fromDefaultFieldFormalParameterElementImpl(
                      defaultFieldFormalParameterElementImpl: x,
                    )
                  : x is DefaultParameterElementImpl
                      ? DartDefaultFieldFormalOrDefaultFormal
                          .fromDefaultParameterElementImpl(
                          defaultParameterElementImpl: x,
                        )
                      : null,
            )
            .where(
              (x) => x != null,
            )
            .toList()
            .cast<DartDefaultFieldFormalOrDefaultFormal>(),
      ),
      normalParameterNames: List.from(
        functionType.normalParameterNames,
      ),
      normalParameterTypes: List.from(
        functionType.normalParameterTypes
            .mapIndexed(
              (
                i,
                x,
              ) =>
                  (({
                required final SwidType swidType,
              }) =>
                      swidType.clone(
                        declarationModifiers: (({
                          required final ParameterElement? parameterElement,
                        }) =>
                            parameterElement == null
                                ? swidType.declarationModifiers
                                : swidType.declarationModifiers.clone(
                                    isCovariant: parameterElement.isCovariant,
                                    isExplicitlyCovariant: parameterElement
                                            is ParameterElementImpl
                                        ? parameterElement.isExplicitlyCovariant
                                        : swidType.declarationModifiers
                                            .isExplicitlyCovariant,
                                  ))(
                          parameterElement:
                              functionType.parameters.firstWhereIndexedOrNull(
                            (
                              j,
                              k,
                            ) =>
                                j == i,
                          ),
                        ),
                      ))(
                swidType: narrowDartTypeToSwidType(
                  dartType: x,
                  buildElements: true,
                ),
              ),
            )
            .toList(),
      ),
      optionalParameterNames: List.from(
        functionType.optionalParameterNames,
      ),
      optionalParameterTypes: List.from(
        functionType.optionalParameterTypes
            .map(
              (x) => narrowDartTypeToSwidType(
                dartType: x,
                buildElements: true,
              ),
            )
            .toList(),
      ),
      returnType: narrowDartTypeToSwidType(
        dartType: functionType.returnType,
        buildElements: true,
      ),
      isFactory: false,
      typeFormals: functionType.typeFormals.isNotEmpty
          ? functionType.typeFormals
              .map(
                (x) => swidTypeFormalFromTypeParameterElement(
                  typeParameterElement: x,
                  buildElements: buildElements,
                ),
              )
              .toList()
          : [],
    );
