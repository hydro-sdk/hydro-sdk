import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateTypeArgumentsToLowestBound.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateTypeArgumentsToLowestBoundInDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/util/swarsTermSwidFunctionTypeResultMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'instantiateTypeArgumentsToLowestBoundInFunction.freezed.dart';

@freezed
class InstantiateTypeArgumentsToLowestBoundInFunction
    with
        _$InstantiateTypeArgumentsToLowestBoundInFunction,
        HashKeyMixin<InstantiateTypeArgumentsToLowestBoundInFunction>,
        HashComparableMixin<InstantiateTypeArgumentsToLowestBoundInFunction>,
        SwarsTransformMixin<
            InstantiateTypeArgumentsToLowestBoundInFunction,
            $InstantiateTypeArgumentsToLowestBoundInFunctionCopyWith<
                InstantiateTypeArgumentsToLowestBoundInFunction>,
            SwidFunctionType>,
        SwarsTermJsonTransformableResultMixin,
        SwarsTermSwidFunctionTypeResultMixin {
  InstantiateTypeArgumentsToLowestBoundInFunction._();

  factory InstantiateTypeArgumentsToLowestBoundInFunction({
    required final SwidFunctionType swidFunctionType,
    final List<SwidTypeFormal>? swidTypeFormals,
  }) = _$InstantiateTypeArgumentsToLowestBoundInFunctionCtor;

  @override
  String get cacheGroup => "instantiateTypeArgumentsToLowestBoundInFunction";

  @override
  late final List<int> hashableParts = [
    ...swidFunctionType.hashKey.hashableParts,
    ...?swidTypeFormals?.hashableParts,
  ];

  @override
  InstantiateTypeArgumentsToLowestBoundInFunction clone({
    final SwidFunctionType? swidFunctionType,
    final List<SwidTypeFormal>? swidTypeFormals,
  }) =>
      InstantiateTypeArgumentsToLowestBoundInFunction(
        swidFunctionType: swidFunctionType ?? this.swidFunctionType,
        swidTypeFormals: swidTypeFormals ?? this.swidTypeFormals,
      );

  @override
  ISwarsTermResult<SwidFunctionType> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromJsonTransformable(
        (({
          required final List<SwidTypeFormal> mergedTypeFormals,
        }) =>
            swidFunctionType.clone(
              namedParameterTypes: Map.fromEntries(
                swidFunctionType.namedParameterTypes.entries.map(
                  (x) => MapEntry(
                    x.key,
                    pipeline.reduceFromTerm(
                      InstantiateTypeArgumentsToLowestBound(
                        swidType: x.value,
                        swidTypeFormals: mergedTypeFormals,
                      ),
                    ),
                  ),
                ),
              ),
              namedDefaults: Map.fromEntries(
                swidFunctionType.namedDefaults.entries.map(
                  (x) => MapEntry(
                    x.key,
                    pipeline.reduceFromTerm(
                      InstantiateTypeArgumentsToLowestBoundInDefaultFormalParameter(
                        swidDefaultFormalParameter: x.value,
                        swidTypeFormals: mergedTypeFormals,
                      ),
                    ),
                  ),
                ),
              ),
              normalParameterTypes: swidFunctionType.normalParameterTypes
                  .map(
                    (x) => pipeline.reduceFromTerm(
                      InstantiateTypeArgumentsToLowestBound(
                        swidType: x,
                        swidTypeFormals: mergedTypeFormals,
                      ),
                    ),
                  )
                  .toList(),
              optionalParameterTypes: swidFunctionType.optionalParameterTypes
                  .map(
                    (x) => pipeline.reduceFromTerm(
                      InstantiateTypeArgumentsToLowestBound(
                        swidType: x,
                        swidTypeFormals: mergedTypeFormals,
                      ),
                    ),
                  )
                  .toList(),
              returnType: pipeline.reduceFromTerm(
                InstantiateTypeArgumentsToLowestBound(
                  swidType: swidFunctionType.returnType,
                  swidTypeFormals: mergedTypeFormals,
                ),
              ),
            ))(
          mergedTypeFormals: [
            ...?swidTypeFormals?.where(
              (x) =>
                  swidFunctionType.typeFormals.firstWhereOrNull(
                    (k) => x.value.displayName == k.value.displayName,
                  ) ==
                  null,
            )
          ],
        ),
      );
}
