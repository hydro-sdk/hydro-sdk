import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/analyses/normalConstructorParametersShadowingClassFields.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'rewriteShadowingNormalConstructorParameters.freezed.dart';

@freezed
class RewriteShadowingNormalConstructorParameters
    with
        _$RewriteShadowingNormalConstructorParameters,
        HashKeyMixin<RewriteShadowingNormalConstructorParameters>,
        HashComparableMixin<RewriteShadowingNormalConstructorParameters>,
        SwarsTransformMixin<
            RewriteShadowingNormalConstructorParameters,
            $RewriteShadowingNormalConstructorParametersCopyWith<
                RewriteShadowingNormalConstructorParameters>,
            SwidClass>,
        SwarsTermJsonTransformableResultMixin {
  RewriteShadowingNormalConstructorParameters._();

  factory RewriteShadowingNormalConstructorParameters({
    required final SwidClass swidClass,
  }) = _$RewriteShadowingNormalConstructorParametersCtor;

  @override
  String get cacheGroup => "rewriteShadowingNormalConstructorParameters";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidClass.hashKey.hashableParts;
  }

  @override
  RewriteShadowingNormalConstructorParameters clone({
    final SwidClass? swidClass,
  }) =>
      RewriteShadowingNormalConstructorParameters(
        swidClass: swidClass ?? this.swidClass,
      );

  @override
  SwidClass termResultDeserializer(final Map<String, dynamic> json) =>
      SwidClass.fromJson(json);

  @override
  ISwarsTermResult<SwidClass> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      (({
        required final ConstructorParameterShadowingResult
            constructorParameterShadowingResult,
      }) =>
              SwarsTermResult.fromJsonTransformable(
                  swidClass.constructorType != null
                      ? swidClass.clone(
                          constructorType: swidClass.constructorType!.clone(
                            normalParameterNames: swidClass
                                .constructorType!.normalParameterNames
                                .map((x) => constructorParameterShadowingResult
                                            .results
                                            .firstWhereOrNull((k) => k == x) !=
                                        null
                                    ? "${x}\$"
                                    : x)
                                .toList(),
                            optionalParameterNames: swidClass
                                .constructorType!.optionalParameterNames
                                .map((x) => constructorParameterShadowingResult
                                            .results
                                            .firstWhereOrNull((k) => k == x) !=
                                        null
                                    ? "${x}\$"
                                    : x)
                                .toList(),
                          ),
                        )
                      : swidClass))(
          constructorParameterShadowingResult: pipeline.reduceFromTerm(
        NormalConstructorParametersShadowingClassFields(
          swidClass: swidClass,
        ),
      ));
}
