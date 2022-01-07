import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/analyses/hasSuitableTypeFormalBound.dart';
import 'package:hydro_sdk/swid/ir/analyses/suitableTypeFormalBound.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidOriginatedAncestorTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentType.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateTypeArgumentsToLowestBound.dart';
import 'package:hydro_sdk/swid/ir/util/swarsTermSwidInterfaceResultMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'instantiateTypeArgumentsToLowestBoundInInterface.freezed.dart';

@freezed
class InstantiateTypeArgumentsToLowestBoundInInterface
    with
        _$InstantiateTypeArgumentsToLowestBoundInInterface,
        HashKeyMixin<InstantiateTypeArgumentsToLowestBoundInInterface>,
        HashComparableMixin<InstantiateTypeArgumentsToLowestBoundInInterface>,
        SwarsTransformMixin<
            InstantiateTypeArgumentsToLowestBoundInInterface,
            $InstantiateTypeArgumentsToLowestBoundInInterfaceCopyWith<
                InstantiateTypeArgumentsToLowestBoundInInterface>,
            SwidInterface>,
        SwarsTermJsonTransformableResultMixin,
        SwarsTermSwidInterfaceResultMixin {
  InstantiateTypeArgumentsToLowestBoundInInterface._();

  factory InstantiateTypeArgumentsToLowestBoundInInterface({
    required final SwidInterface swidInterface,
    final List<SwidOriginatedAncestorTypeFormal>? swidTypeFormals,
  }) = _$InstantiateTypeArgumentsToLowestBoundInInterfaceCtor;

  @override
  String get cacheGroup => "instantiateTypeArgumentsToLowestBoundInInterface";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidInterface.hashKey.hashableParts;
    yield* swidTypeFormals?.hashableParts ?? [];
  }

  @override
  InstantiateTypeArgumentsToLowestBoundInInterface clone({
    final SwidInterface? swidInterface,
    final List<SwidOriginatedAncestorTypeFormal>? swidTypeFormals,
  }) =>
      InstantiateTypeArgumentsToLowestBoundInInterface(
        swidInterface: swidInterface ?? this.swidInterface,
        swidTypeFormals: swidTypeFormals ?? this.swidTypeFormals,
      );

  @override
  ISwarsTermResult<SwidInterface> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromJsonTransformable(
        (({
          required final SwidInterface withInnerTransformedTypeArguments,
        }) =>
            pipeline.reduceFromTerm(
              HasSuitableTypeFormalBound(
                candidateInterface: withInnerTransformedTypeArguments,
                swidTypeFormals: swidTypeFormals,
              ),
            )
                ? pipeline.reduceFromTerm(
                    SuitableTypeFormalBound(
                      candidateInterface: withInnerTransformedTypeArguments,
                      swidTypeFormals: swidTypeFormals,
                    ),
                  )
                : withInnerTransformedTypeArguments)(
          withInnerTransformedTypeArguments: swidInterface.clone(
            typeArguments: swidInterface.typeArguments
                .map(
                  (x) => SwidTypeArgumentType(
                    type: pipeline.reduceFromTerm(
                      InstantiateTypeArgumentsToLowestBound(
                        swidType: x.type,
                        swidTypeFormals: swidTypeFormals,
                      ),
                    ),
                    element: x.element,
                  ),
                )
                .toList(),
          ),
        ),
      );
}
