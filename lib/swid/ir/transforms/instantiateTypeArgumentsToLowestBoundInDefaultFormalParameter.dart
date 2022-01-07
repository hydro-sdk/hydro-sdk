import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/swidOriginatedAncestorTypeFormal.dart';
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
    final List<SwidOriginatedAncestorTypeFormal>? swidTypeFormals,
  }) = _$InstantiateTypeArgumentsToLowestBoundInDefaultFormalParameterCtor;

  @override
  String get cacheGroup =>
      "instantiateTypeArgumentsToLowestBoundInDefaultFormalParameter";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidDefaultFormalParameter.hashKey.hashableParts;
    yield* swidTypeFormals?.hashableParts ?? [];
  }

  @override
  InstantiateTypeArgumentsToLowestBoundInDefaultFormalParameter clone({
    final SwidDefaultFormalParameter? swidDefaultFormalParameter,
    final List<SwidOriginatedAncestorTypeFormal>? swidTypeFormals,
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
              swidTypeFormals: swidTypeFormals,
            ),
          ),
        ),
      );
}
