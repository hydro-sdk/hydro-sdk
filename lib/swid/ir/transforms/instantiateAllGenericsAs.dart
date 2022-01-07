import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidGenericInstantiator.dart';
import 'package:hydro_sdk/swid/ir/swidInstantiatedGeneric.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentType.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateGeneric.dart';
import 'package:hydro_sdk/swid/ir/util/narrowSwidInterfaceByReferenceDeclaration.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'instantiateAllGenericsAs.freezed.dart';

@freezed
class InstantiateAllGenericsAs
    with
        _$InstantiateAllGenericsAs,
        HashKeyMixin<InstantiateAllGenericsAs>,
        HashComparableMixin<InstantiateAllGenericsAs>,
        SwarsTransformMixin<
            InstantiateAllGenericsAs,
            $InstantiateAllGenericsAsCopyWith<InstantiateAllGenericsAs>,
            SwidType>,
        SwarsTermJsonTransformableResultMixin {
  InstantiateAllGenericsAs._();

  factory InstantiateAllGenericsAs({
    required final SwidType swidType,
    required final SwidInstantiatedGeneric instantiatedGeneric,
    required final bool instantiateNormalParameterTypes,
  }) = _$InstantiateAllGenericsAsCtor;

  @override
  String get cacheGroup => "instantiateAllGenericsAs";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidType.hashKey.hashableParts;
    yield* instantiatedGeneric.hashKey.hashableParts;
    yield [...instantiateNormalParameterTypes.hashableParts];
  }

  @override
  InstantiateAllGenericsAs clone({
    final SwidType? swidType,
    final SwidInstantiatedGeneric? instantiatedGeneric,
    final bool? instantiateNormalParameterTypes,
  }) =>
      InstantiateAllGenericsAs(
        swidType: swidType ?? this.swidType,
        instantiatedGeneric: instantiatedGeneric ?? this.instantiatedGeneric,
        instantiateNormalParameterTypes: instantiateNormalParameterTypes ??
            this.instantiateNormalParameterTypes,
      );

  @override
  SwidType termResultDeserializer(final Map<String, dynamic> json) =>
      SwidType.fromJson(json);

  @override
  ISwarsTermResult<SwidType> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromJsonTransformable(
        swidType.when(
          fromSwidInterface: (val) => SwidType.fromSwidInterface(
            swidInterface: narrowSwidInterfaceByReferenceDeclaration(
              swidInterface: val,
              onPrimitive: (val) => val,
              onClass: (val) => val,
              onEnum: (val) => val,
              onVoid: (val) => val,
              onTypeParameter: (val) => pipeline
                  .reduceFromTerm(
                    InstantiateGeneric(
                      genericInstantiator: SwidGenericInstantiator(
                        name: val.name,
                        instantiatedGeneric: instantiatedGeneric,
                      ),
                      swidType: SwidType.fromSwidInterface(
                        swidInterface: val,
                      ),
                    ),
                  )
                  .when(
                    fromSwidInterface: (val) => val,
                    fromSwidClass: (_) => dartUnknownInterface,
                    fromSwidDefaultFormalParameter: (_) => dartUnknownInterface,
                    fromSwidFunctionType: (_) => dartUnknownInterface,
                  ),
              onDynamic: (val) => val,
              onUnknown: (val) => val,
            ).clone(
              typeArguments: val.typeArguments
                  .map(
                    (x) => SwidTypeArgumentType(
                      type: pipeline.reduceFromTerm(
                        InstantiateGeneric(
                          genericInstantiator: SwidGenericInstantiator(
                            name: x.type.name,
                            instantiatedGeneric: instantiatedGeneric,
                          ),
                          swidType: x.type,
                        ),
                      ),
                      element: x.element,
                    ),
                  )
                  .toList(),
            ),
          ),
          fromSwidClass: (val) => SwidType.fromSwidClass(
            swidClass: SwidClass.clone(
              swidClass: val.typeFormals.fold<SwidClass>(
                val,
                (previousValue, element) =>
                    element.swidReferenceDeclarationKind ==
                            SwidReferenceDeclarationKind.typeParameterType
                        ? pipeline
                            .reduceFromTerm(
                              InstantiateGeneric(
                                swidType: SwidType.fromSwidClass(
                                  swidClass: previousValue,
                                ),
                                genericInstantiator: SwidGenericInstantiator(
                                  name: element.value.name,
                                  instantiatedGeneric: instantiatedGeneric,
                                ),
                              ),
                            )
                            .when(
                              fromSwidInterface: (_) => dartUnknownClass,
                              fromSwidClass: (val) => val,
                              fromSwidDefaultFormalParameter: (_) =>
                                  dartUnknownClass,
                              fromSwidFunctionType: (_) => dartUnknownClass,
                            )
                        : SwidClass.clone(
                            swidClass: previousValue,
                          ),
              ),
              constructorType: val.constructorType != null
                  ? pipeline
                      .reduceFromTerm(
                        InstantiateAllGenericsAs(
                          instantiateNormalParameterTypes:
                              instantiateNormalParameterTypes,
                          swidType: SwidType.fromSwidFunctionType(
                            swidFunctionType: val.constructorType!,
                          ),
                          instantiatedGeneric: instantiatedGeneric,
                        ),
                      )
                      .when(
                        fromSwidInterface: (_) => dartUnknownFunction,
                        fromSwidClass: (_) => dartUnknownFunction,
                        fromSwidDefaultFormalParameter: (_) =>
                            dartUnknownFunction,
                        fromSwidFunctionType: (val) => val,
                      )
                  : null,
            ),
          ),
          fromSwidFunctionType: (val) => SwidType.fromSwidFunctionType(
            swidFunctionType: (({
              required final SwidFunctionType swidFunctionType,
            }) =>
                swidFunctionType.clone(
                  normalParameterTypes: instantiateNormalParameterTypes
                      ? swidFunctionType.normalParameterTypes
                          .map(
                            (x) => pipeline.reduceFromTerm(
                              InstantiateAllGenericsAs(
                                swidType: x,
                                instantiateNormalParameterTypes:
                                    instantiateNormalParameterTypes,
                                instantiatedGeneric: instantiatedGeneric,
                              ),
                            ),
                          )
                          .toList()
                      : swidFunctionType.normalParameterTypes,
                  returnType: pipeline.reduceFromTerm(
                    InstantiateAllGenericsAs(
                      swidType: val.returnType,
                      instantiatedGeneric: instantiatedGeneric,
                      instantiateNormalParameterTypes:
                          instantiateNormalParameterTypes,
                    ),
                  ),
                ))(
              swidFunctionType: val.typeFormals.fold<SwidFunctionType>(
                val,
                (previousValue, element) =>
                    element.swidReferenceDeclarationKind ==
                            SwidReferenceDeclarationKind.typeParameterType
                        ? pipeline
                            .reduceFromTerm(
                              InstantiateGeneric(
                                swidType: SwidType.fromSwidFunctionType(
                                    swidFunctionType: previousValue),
                                genericInstantiator: SwidGenericInstantiator(
                                  name: element.value.name,
                                  instantiatedGeneric: instantiatedGeneric,
                                ),
                              ),
                            )
                            .when(
                              fromSwidInterface: (_) => dartUnknownFunction,
                              fromSwidClass: (_) => dartUnknownFunction,
                              fromSwidDefaultFormalParameter: (_) =>
                                  dartUnknownFunction,
                              fromSwidFunctionType: (val) => val,
                            )
                        : SwidFunctionType.clone(
                            swidFunctionType: previousValue,
                          ),
              ),
            ),
          ),
          fromSwidDefaultFormalParameter: (val) =>
              SwidType.fromSwidDefaultFormalParameter(
            swidDefaultFormalParameter: val,
          ),
        ),
      );
}
