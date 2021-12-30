import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/constPrimitives.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/transforms/instantiateTypeArgumentsToLowestBound.dart';
import 'package:hydro_sdk/swid/ir/util/swarsTermSwidInterfaceResultMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/transforms/removeNullabilitySuffix.dart';
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
    final List<SwidTypeFormal>? swidTypeFormals,
  }) = _$InstantiateTypeArgumentsToLowestBoundInInterfaceCtor;

  @override
  String get cacheGroup => "instantiateTypeArgumentsToLowestBoundInInterface";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield [
      ...swidInterface.hashKey.hashableParts,
    ];
    yield* swidTypeFormals?.hashableParts ?? [];
  }

  @override
  InstantiateTypeArgumentsToLowestBoundInInterface clone({
    final SwidInterface? swidInterface,
    final List<SwidTypeFormal>? swidTypeFormals,
  }) =>
      InstantiateTypeArgumentsToLowestBoundInInterface(
        swidInterface: swidInterface ?? this.swidInterface,
        swidTypeFormals: swidTypeFormals ?? this.swidTypeFormals,
      );

  SwidInterface _suitableBound({
    required final SwidInterface candidateInterface,
  }) =>
      swidTypeFormals
          ?.firstWhereOrNull(
            (x) =>
                removeNullabilitySuffix(
                  str: x.value.displayName,
                ) ==
                removeNullabilitySuffix(
                  str: candidateInterface.displayName,
                ),
          )
          ?.swidTypeFormalBound
          ?.when(
            fromSwidInterface: (val) => val,
            fromSwidFunctionType: (_) => dartUnknownInterface,
          ) ??
      dartUnknownInterface;

  bool _hasSuitableBound({
    required final SwidInterface candidateInterface,
  }) =>
      _suitableBound(
        candidateInterface: candidateInterface,
      ) !=
      dartUnknownInterface;

  @override
  ISwarsTermResult<SwidInterface> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromJsonTransformable(
        (({
          required final SwidInterface withInnerTransformedTypeArguments,
        }) =>
            _hasSuitableBound(
              candidateInterface: withInnerTransformedTypeArguments,
            )
                ? _suitableBound(
                    candidateInterface: withInnerTransformedTypeArguments,
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
