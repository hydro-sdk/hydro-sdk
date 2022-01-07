import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidGenericInstantiator.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';
import 'package:hydro_sdk/swid/ir/util/irTermMixin.dart';
import 'package:hydro_sdk/swid/ir/util/narrowSwidInterfaceByReferenceDeclaration.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/transforms/removeNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'instantiateGeneric.freezed.dart';

@freezed
class InstantiateGeneric
    with
        _$InstantiateGeneric,
        HashKeyMixin<InstantiateGeneric>,
        HashComparableMixin<InstantiateGeneric>,
        SwarsTransformMixin<InstantiateGeneric,
            $InstantiateGenericCopyWith<InstantiateGeneric>, SwidType>,
        SwarsTermJsonTransformableResultMixin,
        IrTermMixin {
  InstantiateGeneric._();

  factory InstantiateGeneric({
    required final SwidGenericInstantiator genericInstantiator,
    required final SwidType swidType,
  }) = _$InstantiateGenericCtor;

  @override
  String get cacheGroup => "instantiateGeneric";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* genericInstantiator.hashKey.hashableParts;
    yield* swidType.hashKey.hashableParts;
  }

  @override
  InstantiateGeneric clone({
    final SwidGenericInstantiator? genericInstantiator,
    final SwidType? swidType,
  }) =>
      InstantiateGeneric(
        genericInstantiator: genericInstantiator ?? this.genericInstantiator,
        swidType: swidType ?? this.swidType,
      );

  @override
  ISwarsTermResult<SwidType> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromJsonTransformable(
        swidType.when(
          fromSwidInterface: (val) => narrowSwidInterfaceByReferenceDeclaration(
            swidInterface: val,
            onPrimitive: (val) => SwidType.fromSwidInterface(
              swidInterface: SwidInterface.clone(
                swidType: val,
                typeArguments: val.typeArguments
                    .map(
                      (x) => SwidTypeArgumentType(
                        type: pipeline.reduceFromTerm(
                          InstantiateGeneric(
                            genericInstantiator: genericInstantiator,
                            swidType: x.type,
                          ),
                        ),
                        element: x.element,
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
                      (x) => SwidTypeArgumentType(
                        type: pipeline.reduceFromTerm(
                          InstantiateGeneric(
                            genericInstantiator: genericInstantiator,
                            swidType: x.type,
                          ),
                        ),
                        element: x.element,
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
                      (x) => SwidTypeArgumentType(
                        type: pipeline.reduceFromTerm(
                          InstantiateGeneric(
                            genericInstantiator: genericInstantiator,
                            swidType: x.type,
                          ),
                        ),
                        element: x.element,
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
                      (x) => SwidTypeArgumentType(
                        type: pipeline.reduceFromTerm(
                          InstantiateGeneric(
                            genericInstantiator: genericInstantiator,
                            swidType: x.type,
                          ),
                        ),
                        element: x.element,
                      ),
                    )
                    .toList(),
              ),
            ),
            onTypeParameter: (val) => removeNullabilitySuffix(
                      str: val.name,
                    ) ==
                    genericInstantiator.name
                ? genericInstantiator.instantiatedGeneric.instantiableGeneric
                    .when(
                    fromSwidClass: (val) => SwidType.fromSwidClass(
                      swidClass: val.clone(
                        nullabilitySuffix: swidType.nullabilitySuffix,
                      ),
                    ),
                    fromSwidInterface: (val) => SwidType.fromSwidInterface(
                      swidInterface: val.clone(
                        nullabilitySuffix: swidType.nullabilitySuffix,
                      ),
                    ),
                    fromSwidFunctionType: (val) =>
                        SwidType.fromSwidFunctionType(
                      swidFunctionType: val.clone(
                        nullabilitySuffix: swidType.nullabilitySuffix,
                      ),
                    ),
                  )
                : SwidType.fromSwidInterface(
                    swidInterface: val,
                  ),
            onDynamic: (val) => SwidType.fromSwidInterface(
              swidInterface: SwidInterface.clone(
                swidType: val,
                typeArguments: val.typeArguments
                    .map(
                      (x) => SwidTypeArgumentType(
                        type: pipeline.reduceFromTerm(
                          InstantiateGeneric(
                            genericInstantiator: genericInstantiator,
                            swidType: x.type,
                          ),
                        ),
                        element: x.element,
                      ),
                    )
                    .toList(),
              ),
            ),
            onUnknown: (_) => dartUnknownType,
          ),
          fromSwidClass: (val) => <SwidTypeFormal?>[
                    ...val.typeFormals
                  ].firstWhere(
                      (x) =>
                          x!.swidReferenceDeclarationKind ==
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
                                  x.value.displayName ==
                                      genericInstantiator.name
                              ? SwidTypeFormal(
                                  value: genericInstantiator
                                      .instantiatedGeneric.instantiableGeneric
                                      .when(
                                    fromSwidClass: (val) =>
                                        SwidTypeFormalValue.fromSwidClass(
                                      swidClass: val.clone(
                                        nullabilitySuffix:
                                            swidType.nullabilitySuffix,
                                      ),
                                    ),
                                    fromSwidInterface: (val) =>
                                        SwidTypeFormalValue.fromSwidInterface(
                                      swidInterface: val.clone(
                                        nullabilitySuffix:
                                            swidType.nullabilitySuffix,
                                      ),
                                    ),
                                    fromSwidFunctionType: (val) =>
                                        SwidTypeFormalValue
                                            .fromSwidFunctionType(
                                      swidFunctionType: val.clone(
                                        nullabilitySuffix:
                                            swidType.nullabilitySuffix,
                                      ),
                                    ),
                                  ),
                                  swidReferenceDeclarationKind:
                                      genericInstantiator.instantiatedGeneric
                                          .referenceDeclarationKind,
                                  swidTypeFormalBound: x.swidTypeFormalBound,
                                )
                              : x)
                          .toList(),
                    ]..removeWhere((x) => x == dartUnkownTypeFormal),
                    constructorType: val.constructorType != null
                        ? pipeline
                            .reduceFromTerm(
                              InstantiateGeneric(
                                genericInstantiator: genericInstantiator,
                                swidType: SwidType.fromSwidFunctionType(
                                  swidFunctionType: val.constructorType!,
                                ),
                              ),
                            )
                            .when(
                              fromSwidInterface: (_) => null,
                              fromSwidClass: (_) => null,
                              fromSwidDefaultFormalParameter: (_) => null,
                              fromSwidFunctionType: (val) => val,
                            )
                        : null,
                    factoryConstructors: val.factoryConstructors
                        .map(
                          (x) => pipeline
                              .reduceFromTerm(
                                InstantiateGeneric(
                                  genericInstantiator: genericInstantiator,
                                  swidType: SwidType.fromSwidFunctionType(
                                    swidFunctionType: x,
                                  ),
                                ),
                              )
                              .when(
                                fromSwidInterface: (_) => null,
                                fromSwidClass: (_) => null,
                                fromSwidDefaultFormalParameter: (_) => null,
                                fromSwidFunctionType: (val) => val,
                              ),
                        )
                        .where((x) => x != null)
                        .toList()
                        .cast<SwidFunctionType>(),
                    staticMethods: val.staticMethods
                        .map(
                          (x) => pipeline
                              .reduceFromTerm(
                                InstantiateGeneric(
                                  genericInstantiator: genericInstantiator,
                                  swidType: SwidType.fromSwidFunctionType(
                                    swidFunctionType: x,
                                  ),
                                ),
                              )
                              .when(
                                fromSwidInterface: (_) => null,
                                fromSwidClass: (_) => null,
                                fromSwidDefaultFormalParameter: (_) => null,
                                fromSwidFunctionType: (val) => val,
                              ),
                        )
                        .where((x) => x != null)
                        .toList()
                        .cast<SwidFunctionType>(),
                    methods: val.methods
                        .map(
                          (x) => pipeline
                              .reduceFromTerm(
                                InstantiateGeneric(
                                  genericInstantiator: genericInstantiator,
                                  swidType: SwidType.fromSwidFunctionType(
                                    swidFunctionType: x,
                                  ),
                                ),
                              )
                              .when(
                                fromSwidInterface: (_) => null,
                                fromSwidClass: (_) => null,
                                fromSwidDefaultFormalParameter: (_) => null,
                                fromSwidFunctionType: (val) => val,
                              ),
                        )
                        .where((x) => x != null)
                        .toList()
                        .cast<SwidFunctionType>(),
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
                        ? SwidTypeFormal(
                            value: genericInstantiator
                                .instantiatedGeneric.instantiableGeneric
                                .when(
                              fromSwidClass: (val) =>
                                  SwidTypeFormalValue.fromSwidClass(
                                      swidClass: val),
                              fromSwidInterface: (val) =>
                                  SwidTypeFormalValue.fromSwidInterface(
                                      swidInterface: val),
                              fromSwidFunctionType: (val) =>
                                  SwidTypeFormalValue.fromSwidFunctionType(
                                      swidFunctionType: val),
                            ),
                            swidReferenceDeclarationKind: genericInstantiator
                                .instantiatedGeneric.referenceDeclarationKind,
                            swidTypeFormalBound: null,
                          )
                        : x)
                    .toList(),
              ]..removeWhere((x) => x == dartUnkownTypeFormal),
              namedParameterTypes: Map.fromEntries(
                val.namedParameterTypes.entries
                    .map(
                      (x) => MapEntry(
                        x.key,
                        pipeline.reduceFromTerm(
                          InstantiateGeneric(
                            genericInstantiator: genericInstantiator,
                            swidType: x.value,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
              normalParameterTypes: val.normalParameterTypes
                  .map(
                    (x) => pipeline.reduceFromTerm(
                      InstantiateGeneric(
                        genericInstantiator: genericInstantiator,
                        swidType: x,
                      ),
                    ),
                  )
                  .toList(),
              optionalParameterTypes: val.optionalParameterTypes
                  .map(
                    (x) => pipeline.reduceFromTerm(
                      InstantiateGeneric(
                        genericInstantiator: genericInstantiator,
                        swidType: x,
                      ),
                    ),
                  )
                  .toList(),
              returnType: pipeline.reduceFromTerm(
                InstantiateGeneric(
                  genericInstantiator: genericInstantiator,
                  swidType: val.returnType,
                ),
              ),
            ),
          ),
        ),
      );
}
