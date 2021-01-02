import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/isList.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/narrowSwidInterfaceByReferenceDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/transforms/removeTypeArguments.dart';

SwidType castTypeParametersToDynamic({
  @required SwidType swidType,
  @required bool preserveTypeParametersInLists,
}) =>
    preserveTypeParametersInLists && isList(swidType: swidType)
        ? swidType
        : swidType.when(
            fromSwidInterface: (val) =>
                narrowSwidInterfaceByReferenceDeclaration(
                  swidInterface: val,
                  onPrimitive: (val) =>
                      SwidType.fromSwidInterface(swidInterface: val),
                  onClass: (val) => SwidType.fromSwidInterface(
                    swidInterface: SwidInterface.clone(
                        swidType: val,
                        name: removeTypeArguments(str: val.name),
                        typeArguments: val.typeArguments
                            .map(
                              (x) => SwidType.fromSwidInterface(
                                swidInterface: SwidInterface(
                                  name: "dynamic",
                                  nullabilitySuffix: SwidNullabilitySuffix.none,
                                  originalPackagePath: "",
                                  referenceDeclarationKind:
                                      SwidReferenceDeclarationKind.dynamicType,
                                  typeArguments: [],
                                ),
                              ),
                            )
                            .toList()),
                  ),
                  onEnum: (val) =>
                      SwidType.fromSwidInterface(swidInterface: val),
                  onVoid: (val) =>
                      SwidType.fromSwidInterface(swidInterface: val),
                  onTypeParameter: (val) => SwidType.fromSwidInterface(
                    swidInterface: SwidInterface(
                      name: "dynamic",
                      nullabilitySuffix: SwidNullabilitySuffix.none,
                      originalPackagePath: "",
                      referenceDeclarationKind:
                          SwidReferenceDeclarationKind.dynamicType,
                      typeArguments: [],
                    ),
                  ),
                  onDynamic: (val) =>
                      SwidType.fromSwidInterface(swidInterface: val),
                ),
            fromSwidClass: (val) => SwidType.fromSwidClass(
                  swidClass: SwidClass.clone(
                    swidClass: val,
                    constructorType: val.constructorType != null
                        ? castTypeParametersToDynamic(
                            swidType: SwidType.fromSwidFunctionType(
                                swidFunctionType: val.constructorType),
                            preserveTypeParametersInLists:
                                preserveTypeParametersInLists,
                          ).when(
                            fromSwidInterface: (_) => null,
                            fromSwidClass: (_) => null,
                            fromSwidDefaultFormalParameter: (_) => null,
                            fromSwidFunctionType: (val) => val,
                          )
                        : null,
                    factoryConstructors: val.factoryConstructors
                        .map(
                          (x) => castTypeParametersToDynamic(
                            swidType: SwidType.fromSwidFunctionType(
                                swidFunctionType: x),
                            preserveTypeParametersInLists:
                                preserveTypeParametersInLists,
                          ).when(
                            fromSwidInterface: (_) => null,
                            fromSwidClass: (_) => null,
                            fromSwidDefaultFormalParameter: (_) => null,
                            fromSwidFunctionType: (val) => val,
                          ),
                        )
                        .toList(),
                    staticMethods: val.staticMethods
                        .map(
                          (x) => castTypeParametersToDynamic(
                            swidType: SwidType.fromSwidFunctionType(
                                swidFunctionType: x),
                            preserveTypeParametersInLists:
                                preserveTypeParametersInLists,
                          ).when(
                            fromSwidInterface: (_) => null,
                            fromSwidClass: (_) => null,
                            fromSwidDefaultFormalParameter: (_) => null,
                            fromSwidFunctionType: (val) => val,
                          ),
                        )
                        .toList(),
                    methods: val.methods
                        .map(
                          (x) => castTypeParametersToDynamic(
                            swidType: SwidType.fromSwidFunctionType(
                                swidFunctionType: x),
                            preserveTypeParametersInLists:
                                preserveTypeParametersInLists,
                          ).when(
                            fromSwidInterface: (_) => null,
                            fromSwidClass: (_) => null,
                            fromSwidDefaultFormalParameter: (_) => null,
                            fromSwidFunctionType: (val) => val,
                          ),
                        )
                        .toList(),
                    instanceFieldDeclarations:
                        Map.fromEntries(val.instanceFieldDeclarations.entries
                            .map(
                              (x) => MapEntry(
                                x.key,
                                castTypeParametersToDynamic(
                                  swidType: x.value,
                                  preserveTypeParametersInLists:
                                      preserveTypeParametersInLists,
                                ),
                              ),
                            )
                            .toList()),
                    typeFormals: val.typeFormals
                        .map((_) => SwidTypeFormal(
                              name: "dynamic",
                              swidReferenceDeclarationKind:
                                  SwidReferenceDeclarationKind.dynamicType,
                            ))
                        .toList(),
                  ),
                ),
            fromSwidDefaultFormalParameter: (_) => null,
            fromSwidFunctionType: (val) => SwidType.fromSwidFunctionType(
                  swidFunctionType: SwidFunctionType.clone(
                    swidFunctionType: val,
                    typeFormals: val.typeFormals
                        .map((_) => SwidTypeFormal(
                              name: "dynamic",
                              swidReferenceDeclarationKind:
                                  SwidReferenceDeclarationKind.dynamicType,
                            ))
                        .toList(),
                    namedParameterTypes: Map.fromEntries(
                      val.namedParameterTypes.entries
                          .map(
                            (x) => MapEntry(
                              x.key,
                              castTypeParametersToDynamic(
                                swidType: x.value,
                                preserveTypeParametersInLists:
                                    preserveTypeParametersInLists,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    normalParameterTypes: val.normalParameterTypes
                        .map((x) => castTypeParametersToDynamic(
                              swidType: x,
                              preserveTypeParametersInLists:
                                  preserveTypeParametersInLists,
                            ))
                        .toList(),
                    optionalParameterTypes: val.optionalParameterTypes
                        .map((x) => castTypeParametersToDynamic(
                              swidType: x,
                              preserveTypeParametersInLists:
                                  preserveTypeParametersInLists,
                            ))
                        .toList(),
                    returnType: castTypeParametersToDynamic(
                      swidType: val.returnType,
                      preserveTypeParametersInLists:
                          preserveTypeParametersInLists,
                    ),
                  ),
                ));
