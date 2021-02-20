import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/frontend/util/isList.dart';
import 'package:hydro_sdk/swid/ir/frontend/util/narrowSwidInterfaceByReferenceDeclaration.dart';
import 'package:hydro_sdk/swid/transforms/removeTypeArguments.dart';

SwidType castTypeParametersToDynamic({
  @required SwidType swidType,
  @required bool preserveTypeParametersInLists,
  @required bool preserveFunctionTypeFormals,
}) =>
    swidType.when(
        fromSwidInterface: (val) => narrowSwidInterfaceByReferenceDeclaration(
              swidInterface: val,
              onPrimitive: (val) =>
                  SwidType.fromSwidInterface(swidInterface: val),
              onClass: (val) => preserveTypeParametersInLists &&
                      isList(swidType: swidType) &&
                      (val.typeArguments.first?.when(
                            fromSwidInterface: (val) =>
                                narrowSwidInterfaceByReferenceDeclaration(
                              swidInterface: val,
                              onPrimitive: (_) => true,
                              onClass: (_) => true,
                              onEnum: (_) => true,
                              onVoid: (_) => true,
                              onTypeParameter: (_) => false,
                              onDynamic: (_) => true,
                            ),
                            fromSwidClass: (_) => true,
                            fromSwidDefaultFormalParameter: (_) => true,
                            fromSwidFunctionType: (_) => true,
                          ) ??
                          true)
                  ? swidType
                  : SwidType.fromSwidInterface(
                      swidInterface: SwidInterface.clone(
                          swidType: val,
                          name: removeTypeArguments(str: val.name),
                          typeArguments: val.typeArguments
                              .map(
                                (x) => SwidType.fromSwidInterface(
                                  swidInterface: SwidInterface(
                                    name: "dynamic",
                                    nullabilitySuffix:
                                        SwidNullabilitySuffix.none,
                                    originalPackagePath: "",
                                    referenceDeclarationKind:
                                        SwidReferenceDeclarationKind
                                            .dynamicType,
                                    typeArguments: [],
                                  ),
                                ),
                              )
                              .toList()),
                    ),
              onEnum: (val) => SwidType.fromSwidInterface(swidInterface: val),
              onVoid: (val) => SwidType.fromSwidInterface(swidInterface: val),
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
                        preserveFunctionTypeFormals:
                            preserveFunctionTypeFormals,
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
                        swidType:
                            SwidType.fromSwidFunctionType(swidFunctionType: x),
                        preserveTypeParametersInLists:
                            preserveTypeParametersInLists,
                        preserveFunctionTypeFormals:
                            preserveFunctionTypeFormals,
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
                        swidType:
                            SwidType.fromSwidFunctionType(swidFunctionType: x),
                        preserveTypeParametersInLists:
                            preserveTypeParametersInLists,
                        preserveFunctionTypeFormals:
                            preserveFunctionTypeFormals,
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
                        swidType:
                            SwidType.fromSwidFunctionType(swidFunctionType: x),
                        preserveTypeParametersInLists:
                            preserveTypeParametersInLists,
                        preserveFunctionTypeFormals:
                            preserveFunctionTypeFormals,
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
                              preserveFunctionTypeFormals:
                                  preserveFunctionTypeFormals,
                            ),
                          ),
                        )
                        .toList()),
                typeFormals: val.typeFormals
                    .map((_) => SwidTypeFormal(
                          value:
                              SwidTypeFormalValue.fromString(string: "dynamic"),
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
                typeFormals: !preserveFunctionTypeFormals
                    ? val.typeFormals
                        .map((_) => SwidTypeFormal(
                              value: SwidTypeFormalValue.fromString(
                                  string: "dynamic"),
                              swidReferenceDeclarationKind:
                                  SwidReferenceDeclarationKind.dynamicType,
                            ))
                        .toList()
                    : val.typeFormals,
                namedParameterTypes: Map.fromEntries(
                  val.namedParameterTypes.entries
                      .map(
                        (x) => MapEntry(
                          x.key,
                          castTypeParametersToDynamic(
                            swidType: x.value,
                            preserveTypeParametersInLists:
                                preserveTypeParametersInLists,
                            preserveFunctionTypeFormals:
                                preserveFunctionTypeFormals,
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
                          preserveFunctionTypeFormals:
                              preserveFunctionTypeFormals,
                        ))
                    .toList(),
                optionalParameterTypes: val.optionalParameterTypes
                    .map((x) => castTypeParametersToDynamic(
                          swidType: x,
                          preserveTypeParametersInLists:
                              preserveTypeParametersInLists,
                          preserveFunctionTypeFormals:
                              preserveFunctionTypeFormals,
                        ))
                    .toList(),
                returnType: castTypeParametersToDynamic(
                  swidType: val.returnType,
                  preserveTypeParametersInLists: preserveTypeParametersInLists,
                  preserveFunctionTypeFormals: preserveFunctionTypeFormals,
                ),
              ),
            ));
