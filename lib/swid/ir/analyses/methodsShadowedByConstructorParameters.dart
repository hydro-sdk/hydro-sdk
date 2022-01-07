import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsAnalysisMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableListResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'methodsShadowedByConstructorParameters.freezed.dart';

@freezed
class MethodsShadowedByConstructorParameters
    with
        _$MethodsShadowedByConstructorParameters,
        HashKeyMixin<MethodsShadowedByConstructorParameters>,
        HashComparableMixin<MethodsShadowedByConstructorParameters>,
        SwarsAnalysisMixin<
            MethodsShadowedByConstructorParameters,
            $MethodsShadowedByConstructorParametersCopyWith<
                MethodsShadowedByConstructorParameters>,
            List<SwidFunctionType>>,
        SwarsTermJsonTransformableListResultMixin {
  MethodsShadowedByConstructorParameters._();

  factory MethodsShadowedByConstructorParameters({
    required final SwidClass swidClass,
  }) = _$MethodsShadowedByConstructorParametersCtor;

  @override
  String get cacheGroup => "methodsShadowedByConstructorParameters";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidClass.hashKey.hashableParts;
  }

  @override
  MethodsShadowedByConstructorParameters clone({
    final SwidClass? swidClass,
  }) =>
      MethodsShadowedByConstructorParameters(
        swidClass: swidClass ?? this.swidClass,
      );

  @override
  SwidFunctionType termResultDeserializer(final Map<String, dynamic> json) =>
      SwidFunctionType.fromJson(json);

  @override
  ISwarsTermResult<List<SwidFunctionType>> analyze({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromList(
        swidClass.constructorType != null
            ? swidClass.methods
                .where(
                  (x) =>
                      swidClass.constructorType!.normalParameterNames
                              .firstWhereOrNull(
                            (k) => x.name == k,
                          ) !=
                          null ||
                      swidClass.constructorType!.namedParameterTypes.entries
                              .firstWhereOrNull(
                            (k) => x.name == k.key,
                          ) !=
                          null,
                )
                .toList()
            : [],
      );
}
