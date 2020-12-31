import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidTypeFormal.dart';
import 'package:meta/meta.dart';

SwidType castTypeParametersToDynamic({@required SwidType swidType}) =>
    swidType.when(
        fromSwidInterface: (val) => SwidType.fromSwidInterface(
              swidInterface: SwidInterface.clone(
                  swidType: val,
                  typeArguments: val.typeArguments
                      .map((x) => SwidType.fromSwidInterface(
                          swidInterface: SwidInterface(
                              name: "dynamic",
                              nullabilitySuffix: SwidNullabilitySuffix.none,
                              originalPackagePath: "",
                              referenceDeclarationKind:
                                  SwidReferenceDeclarationKind.dynamicType,
                              typeArguments: val.typeArguments
                                  .map((e) =>
                                      castTypeParametersToDynamic(swidType: e))
                                  .toList())))
                      .toList()),
            ),
        fromSwidClass: (val) => SwidType.fromSwidClass(
              swidClass: SwidClass.clone(
                swidClass: val,
                constructorType: castTypeParametersToDynamic(
                        swidType: SwidType.fromSwidFunctionType(
                            swidFunctionType: val.constructorType))
                    .when(
                  fromSwidInterface: (_) => null,
                  fromSwidClass: (_) => null,
                  fromSwidDefaultFormalParameter: (_) => null,
                  fromSwidFunctionType: (val) => val,
                ),
                factoryConstructors: val.factoryConstructors
                    .map(
                      (x) => castTypeParametersToDynamic(
                              swidType: SwidType.fromSwidFunctionType(
                                  swidFunctionType: x))
                          .when(
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
                                  swidFunctionType: x))
                          .when(
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
                                  swidFunctionType: x))
                          .when(
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
                            castTypeParametersToDynamic(swidType: x.value),
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
                          castTypeParametersToDynamic(swidType: x.value),
                        ),
                      )
                      .toList(),
                ),
                normalParameterTypes: val.normalParameterTypes
                    .map((x) => castTypeParametersToDynamic(swidType: x))
                    .toList(),
                optionalParameterTypes: val.optionalParameterTypes
                    .map((x) => castTypeParametersToDynamic(swidType: x))
                    .toList(),
                returnType:
                    castTypeParametersToDynamic(swidType: val.returnType),
              ),
            ));
