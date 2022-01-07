import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/analyses/hasSuitableTypeFormalBound.dart';
import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidOriginatedAncestorTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateAllGenericsAsDynamic.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateTypeArgumentsToLowestBoundInClass.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateTypeArgumentsToLowestBoundInDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateTypeArgumentsToLowestBoundInFunction.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateTypeArgumentsToLowestBoundInInterface.dart';
import 'package:hydro_sdk/swid/ir/util/irTermMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/transforms/removeNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'instantiateTypeArgumentsToLowestBound.freezed.dart';

@freezed
class InstantiateTypeArgumentsToLowestBound
    with
        _$InstantiateTypeArgumentsToLowestBound,
        HashKeyMixin<InstantiateTypeArgumentsToLowestBound>,
        HashComparableMixin<InstantiateTypeArgumentsToLowestBound>,
        SwarsTransformMixin<
            InstantiateTypeArgumentsToLowestBound,
            $InstantiateTypeArgumentsToLowestBoundCopyWith<
                InstantiateTypeArgumentsToLowestBound>,
            SwidType>,
        SwarsTermJsonTransformableResultMixin,
        IrTermMixin {
  InstantiateTypeArgumentsToLowestBound._();

  factory InstantiateTypeArgumentsToLowestBound({
    required final SwidType swidType,
    final List<SwidOriginatedAncestorTypeFormal>? swidTypeFormals,
  }) = _$InstantiateTypeArgumentsToLowestBoundCtor;

  @override
  String get cacheGroup => "instantiateTypeArgumentsToLowestBound";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidType.hashKey.hashableParts;
    yield* swidTypeFormals?.hashableParts ?? [];
  }

  @override
  InstantiateTypeArgumentsToLowestBound clone({
    final SwidType? swidType,
    final List<SwidOriginatedAncestorTypeFormal>? swidTypeFormals,
  }) =>
      InstantiateTypeArgumentsToLowestBound(
        swidType: swidType ?? this.swidType,
        swidTypeFormals: swidTypeFormals ?? this.swidTypeFormals,
      );

  @override
  ISwarsTermResult<SwidType> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromJsonTransformable(
        swidType.when(
          fromSwidInterface: (val) => SwidType.fromSwidInterface(
            swidInterface: (({
              required final SwidInterface res,
            }) =>
                res.referenceDeclarationKind ==
                            SwidReferenceDeclarationKind.typeParameterType &&
                        swidTypeFormals?.firstWhereOrNull(
                              (x) =>
                                  x.kind ==
                                      SwidOriginatedAncestorTypeFormalKind
                                          .kMethod &&
                                  removeNullabilitySuffix(
                                        str: x.swidTypeFormal.value.displayName,
                                      ) ==
                                      removeNullabilitySuffix(
                                        str: res.displayName,
                                      ),
                            ) !=
                            null
                    ? res
                    : res.typeArguments.isEmpty &&
                            res.referenceDeclarationKind ==
                                SwidReferenceDeclarationKind
                                    .typeParameterType &&
                            !pipeline.reduceFromTerm(
                              HasSuitableTypeFormalBound(
                                candidateInterface: res,
                                swidTypeFormals: swidTypeFormals,
                              ),
                            )
                        ? pipeline
                            .reduceFromTerm(
                              InstantiateAllGenericsAsDynamic(
                                swidType: SwidType.fromSwidInterface(
                                  swidInterface: res,
                                ),
                              ),
                            )
                            .when(
                              fromSwidInterface: (val) => val,
                              fromSwidClass: (_) => dartUnknownInterface,
                              fromSwidDefaultFormalParameter: (_) =>
                                  dartUnknownInterface,
                              fromSwidFunctionType: (_) => dartUnknownInterface,
                            )
                        : res.typeArguments.isNotEmpty &&
                                res.referenceDeclarationKind ==
                                    SwidReferenceDeclarationKind.classElement
                            ? res.clone(
                                typeArguments: res.typeArguments
                                    .map(
                                      (x) => x.clone(
                                        type: x.type.when(
                                          fromSwidInterface: (val) => (val
                                                              .referenceDeclarationKind ==
                                                          SwidReferenceDeclarationKind
                                                              .typeParameterType ||
                                                      val.referenceDeclarationKind ==
                                                          SwidReferenceDeclarationKind
                                                              .dynamicType) &&
                                                  (swidTypeFormals
                                                          ?.firstWhereOrNull(
                                                        (k) =>
                                                            k.kind ==
                                                                SwidOriginatedAncestorTypeFormalKind
                                                                    .kMethod &&
                                                            removeNullabilitySuffix(
                                                                  str: k
                                                                      .swidTypeFormal
                                                                      .value
                                                                      .displayName,
                                                                ) ==
                                                                removeNullabilitySuffix(
                                                                  str: val
                                                                      .displayName,
                                                                ),
                                                      ) ==
                                                      null) &&
                                                  (x.element?.when(
                                                        fromSwidTypeArgumentElement:
                                                            (val) =>
                                                                val.bound.when(
                                                          fromSwidInterface:
                                                              (_) => true,
                                                          fromSwidClass: (_) =>
                                                              false,
                                                          fromSwidDefaultFormalParameter:
                                                              (_) => false,
                                                          fromSwidFunctionType:
                                                              (_) => false,
                                                        ),
                                                      ) ??
                                                      false)
                                              ? SwidType.fromSwidInterface(
                                                  swidInterface:
                                                      x.element!.when(
                                                    fromSwidTypeArgumentElement:
                                                        (val) => val.bound.when(
                                                      fromSwidInterface:
                                                          (val) => val,
                                                      fromSwidClass: (_) =>
                                                          dartUnknownInterface,
                                                      fromSwidDefaultFormalParameter:
                                                          (_) =>
                                                              dartUnknownInterface,
                                                      fromSwidFunctionType: (_) =>
                                                          dartUnknownInterface,
                                                    ),
                                                  ),
                                                )
                                              : x.type,
                                          fromSwidClass: (val) =>
                                              SwidType.fromSwidClass(
                                            swidClass: val,
                                          ),
                                          fromSwidDefaultFormalParameter:
                                              (val) => SwidType
                                                  .fromSwidDefaultFormalParameter(
                                            swidDefaultFormalParameter: val,
                                          ),
                                          fromSwidFunctionType: (val) =>
                                              SwidType.fromSwidFunctionType(
                                            swidFunctionType: val,
                                          ),
                                        ),
                                      ),
                                    )
                                    .toList(),
                              )
                            : res)(
              res: pipeline.reduceFromTerm(
                InstantiateTypeArgumentsToLowestBoundInInterface(
                  swidInterface: val,
                  swidTypeFormals: swidTypeFormals,
                ),
              ),
            ),
          ),
          fromSwidClass: (val) => SwidType.fromSwidClass(
            swidClass: pipeline.reduceFromTerm(
              InstantiateTypeArgumentsToLowestBoundInClass(
                swidClass: val,
                swidTypeFormals: swidTypeFormals,
              ),
            ),
          ),
          fromSwidDefaultFormalParameter: (val) =>
              SwidType.fromSwidDefaultFormalParameter(
            swidDefaultFormalParameter: pipeline.reduceFromTerm(
              InstantiateTypeArgumentsToLowestBoundInDefaultFormalParameter(
                swidDefaultFormalParameter: val,
                swidTypeFormals: swidTypeFormals,
              ),
            ),
          ),
          fromSwidFunctionType: (val) => SwidType.fromSwidFunctionType(
            swidFunctionType: pipeline.reduceFromTerm(
              InstantiateTypeArgumentsToLowestBoundInFunction(
                swidFunctionType: val,
                swidTypeFormals: swidTypeFormals,
              ),
            ),
          ),
        ),
      );
}
