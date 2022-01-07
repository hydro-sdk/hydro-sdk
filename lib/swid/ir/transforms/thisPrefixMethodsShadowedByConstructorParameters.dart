import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/analyses/methodsShadowedByConstructorParameters.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'thisPrefixMethodsShadowedByConstructorParameters.freezed.dart';

@freezed
class ThisPrefixMethodsShadowedByConstructorParameters
    with
        _$ThisPrefixMethodsShadowedByConstructorParameters,
        HashKeyMixin<ThisPrefixMethodsShadowedByConstructorParameters>,
        HashComparableMixin<ThisPrefixMethodsShadowedByConstructorParameters>,
        SwarsTransformMixin<
            ThisPrefixMethodsShadowedByConstructorParameters,
            $ThisPrefixMethodsShadowedByConstructorParametersCopyWith<
                ThisPrefixMethodsShadowedByConstructorParameters>,
            SwidClass>,
        SwarsTermJsonTransformableResultMixin {
  ThisPrefixMethodsShadowedByConstructorParameters._();

  factory ThisPrefixMethodsShadowedByConstructorParameters({
    required final SwidClass swidClass,
  }) = _$MethodsShadowedByConstructorParametersCtor;

  @override
  String get cacheGroup => "thisPrefixMethodsShadowedByConstructorParameters";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidClass.hashKey.hashableParts;
  }

  @override
  ThisPrefixMethodsShadowedByConstructorParameters clone({
    final SwidClass? swidClass,
  }) =>
      ThisPrefixMethodsShadowedByConstructorParameters(
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
        required final List<SwidFunctionType> shadowedMethods,
      }) =>
          SwarsTermResult.fromJsonTransformable(
            swidClass.clone(
              methods: swidClass.methods
                  .map(
                    (x) => shadowedMethods.firstWhereOrNull(
                                    (k) => k.name == x.name) !=
                                null &&
                            !x.declarationModifiers.isGetter &&
                            x.declarationModifiers.isAbstract
                        ? x.clone(
                            name: "this.${x.name}",
                          )
                        : x,
                  )
                  .toList(),
            ),
          ))(
        shadowedMethods: pipeline.reduceFromTerm(
          MethodsShadowedByConstructorParameters(
            swidClass: swidClass,
          ),
        ),
      );
}
