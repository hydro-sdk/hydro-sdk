import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/dart/swidClass.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/util/narrowSwidInterfaceByReferenceDeclaration.dart';

part "instantiateGeneric.freezed.dart";
part "instantiateGeneric.g.dart";

@freezed
abstract class SwidGenericInstantiator with _$SwidGenericInstantiator {
  factory SwidGenericInstantiator({
    @required String name,
    @required SwidType type,
  }) = _$SwidGenericInstantiatorCtor;

  factory SwidGenericInstantiator.fromJson(Map<String, dynamic> json) =>
      _$SwidGenericInstantiatorFromJson(json);
}

SwidType instantiateGeneric({
  @required SwidGenericInstantiator genericInstantiator,
  @required SwidType swidType,
}) =>
    swidType.when(
      fromSwidInterface: (val) => narrowSwidInterfaceByReferenceDeclaration(
        swidInterface: val,
        onPrimitive: (val) => SwidType.fromSwidInterface(
          swidInterface: SwidInterface.clone(
            swidType: val,
            typeArguments: val.typeArguments
                .map(
                  (x) => instantiateGeneric(
                    genericInstantiator: genericInstantiator,
                    swidType: x,
                  ),
                )
                .toList(),
          ),
        ),
        onClass: (val) => SwidType.fromSwidInterface(
          swidInterface: SwidInterface.clone(
            swidType: val,
            typeArguments: val.typeArguments
                .map(
                  (x) => instantiateGeneric(
                    genericInstantiator: genericInstantiator,
                    swidType: x,
                  ),
                )
                .toList(),
          ),
        ),
        onEnum: (val) => SwidType.fromSwidInterface(
          swidInterface: SwidInterface.clone(
            swidType: val,
            typeArguments: val.typeArguments
                .map(
                  (x) => instantiateGeneric(
                    genericInstantiator: genericInstantiator,
                    swidType: x,
                  ),
                )
                .toList(),
          ),
        ),
        onVoid: (val) => SwidType.fromSwidInterface(
          swidInterface: SwidInterface.clone(
            swidType: val,
            typeArguments: val.typeArguments
                .map(
                  (x) => instantiateGeneric(
                    genericInstantiator: genericInstantiator,
                    swidType: x,
                  ),
                )
                .toList(),
          ),
        ),
        onTypeParameter: (val) => val.name == genericInstantiator.name
            ? genericInstantiator.type
            : SwidType.fromSwidInterface(
                swidInterface: val,
              ),
        onDynamic: (val) => SwidType.fromSwidInterface(
          swidInterface: SwidInterface.clone(
            swidType: val,
            typeArguments: val.typeArguments
                .map(
                  (x) => instantiateGeneric(
                    genericInstantiator: genericInstantiator,
                    swidType: x,
                  ),
                )
                .toList(),
          ),
        ),
      ),
      fromSwidClass: (val) => val.typeFormals.firstWhere(
                  (x) =>
                      x.swidReferenceDeclarationKind ==
                          SwidReferenceDeclarationKind.typeParameterType &&
                      x.value.displayName == genericInstantiator.name,
                  orElse: () => null) !=
              null
          ? SwidType.fromSwidClass(
              swidClass: SwidClass.clone(
                swidClass: val,
                typeFormals: [
                  ...val.typeFormals
                      .map((x) => x.swidReferenceDeclarationKind ==
                                  SwidReferenceDeclarationKind
                                      .typeParameterType &&
                              x.value.displayName == genericInstantiator.name
                          ? null
                          : x)
                      .toList(),
                ]..removeWhere((x) => x == null),
                constructorType: val.constructorType != null
                    ? instantiateGeneric(
                        genericInstantiator: genericInstantiator,
                        swidType: SwidType.fromSwidFunctionType(
                            swidFunctionType: val.constructorType),
                      ).when(
                        fromSwidInterface: (_) => null,
                        fromSwidClass: (_) => null,
                        fromSwidDefaultFormalParameter: (_) => null,
                        fromSwidFunctionType: (val) => val,
                      )
                    : null,
                factoryConstructors: val.factoryConstructors
                    .map(
                      (x) => instantiateGeneric(
                        genericInstantiator: genericInstantiator,
                        swidType: SwidType.fromSwidFunctionType(
                          swidFunctionType: x,
                        ),
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
                      (x) => instantiateGeneric(
                        genericInstantiator: genericInstantiator,
                        swidType: SwidType.fromSwidFunctionType(
                          swidFunctionType: x,
                        ),
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
                      (x) => instantiateGeneric(
                        genericInstantiator: genericInstantiator,
                        swidType: SwidType.fromSwidFunctionType(
                          swidFunctionType: x,
                        ),
                      ).when(
                        fromSwidInterface: (_) => null,
                        fromSwidClass: (_) => null,
                        fromSwidDefaultFormalParameter: (_) => null,
                        fromSwidFunctionType: (val) => val,
                      ),
                    )
                    .toList(),
              ),
            )
          : SwidType.fromSwidClass(
              swidClass: SwidClass.clone(
                swidClass: val,
              ),
            ),
      fromSwidDefaultFormalParameter: (val) =>
          SwidType.fromSwidDefaultFormalParameter(
        swidDefaultFormalParameter: val,
      ),
      fromSwidFunctionType: (val) => SwidType.fromSwidFunctionType(
        swidFunctionType: SwidFunctionType.clone(
            swidFunctionType: val,
            typeFormals: [
              ...val.typeFormals
                  .map((x) => x.value.displayName == genericInstantiator.name
                      ? null
                      : x)
                  .toList(),
            ]..removeWhere((x) => x == null),
            namedParameterTypes: Map.fromEntries(
              val.namedParameterTypes.entries
                  .map(
                    (x) => MapEntry(
                      x.key,
                      instantiateGeneric(
                        genericInstantiator: genericInstantiator,
                        swidType: x.value,
                      ),
                    ),
                  )
                  .toList(),
            ),
            normalParameterTypes: val.normalParameterTypes
                .map(
                  (x) => instantiateGeneric(
                    genericInstantiator: genericInstantiator,
                    swidType: x,
                  ),
                )
                .toList(),
            optionalParameterTypes: val.optionalParameterTypes
                .map(
                  (x) => instantiateGeneric(
                    genericInstantiator: genericInstantiator,
                    swidType: x,
                  ),
                )
                .toList(),
            returnType: instantiateGeneric(
              genericInstantiator: genericInstantiator,
              swidType: val.returnType,
            )),
      ),
    );
