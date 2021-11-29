import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateTypeArgumentsToLowestBound.dart';
import 'package:hydro_sdk/swid/ir/util/swarsTermSwidDefaultFormalParameterMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'instantiateTypeArgumentsToLowestBoundInDefaultFormalParameter.freezed.dart';

@freezed
class InstantiateTypeArgumentsToLowestBoundInDefaultFormalParameter
    with
        _$InstantiateTypeArgumentsToLowestBoundInDefaultFormalParameter,
        HashKeyMixin<
            InstantiateTypeArgumentsToLowestBoundInDefaultFormalParameter>,
        HashComparableMixin<
            InstantiateTypeArgumentsToLowestBoundInDefaultFormalParameter>,
        SwarsTransformMixin<
            InstantiateTypeArgumentsToLowestBoundInDefaultFormalParameter,
            $InstantiateTypeArgumentsToLowestBoundInDefaultFormalParameterCopyWith<
                InstantiateTypeArgumentsToLowestBoundInDefaultFormalParameter>,
            SwidDefaultFormalParameter>,
        SwarsTermJsonTransformableResultMixin,
        SwarsTermSwidDefaultFormalParameterResultMixin {
  InstantiateTypeArgumentsToLowestBoundInDefaultFormalParameter._();

  factory InstantiateTypeArgumentsToLowestBoundInDefaultFormalParameter({
    required final SwidDefaultFormalParameter swidDefaultFormalParameter,
    final List<SwidTypeFormal>? swidTypeFormals,
  }) = _$InstantiateTypeArgumentsToLowestBoundInDefaultFormalParameterCtor;

  @override
  String get cacheGroup =>
      "instantiateTypeArgumentsToLowestBoundInDefaultFormalParameter";

  @override
  late final List<int> hashableParts = [
    ...swidDefaultFormalParameter.hashKey.hashableParts,
    ...?swidTypeFormals?.hashableParts,
  ];

  @override
  InstantiateTypeArgumentsToLowestBoundInDefaultFormalParameter clone({
    final SwidDefaultFormalParameter? swidDefaultFormalParameter,
    final List<SwidTypeFormal>? swidTypeFormals,
  }) =>
      InstantiateTypeArgumentsToLowestBoundInDefaultFormalParameter(
        swidDefaultFormalParameter:
            swidDefaultFormalParameter ?? this.swidDefaultFormalParameter,
        swidTypeFormals: swidTypeFormals ?? this.swidTypeFormals,
      );

  @override
  ISwarsTermResult<SwidDefaultFormalParameter> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromJsonTransformable(
        swidDefaultFormalParameter.clone(
          staticType: pipeline.reduceFromTerm(
            InstantiateTypeArgumentsToLowestBound(
              swidType: swidDefaultFormalParameter.staticType,
            ),
          ),
        ),
      );
}
