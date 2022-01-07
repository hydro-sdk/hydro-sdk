import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsAnalysisMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableListResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iJsonTransformable.dart';

part 'instanceFieldDeclarationsShadowedByConstructorParameters.freezed.dart';
part 'instanceFieldDeclarationsShadowedByConstructorParameters.g.dart';

@freezed
class ShadowedInstanceFieldResult
    with
        _$ShadowedInstanceFieldResult,
        HashKeyMixin<ShadowedInstanceFieldResult>,
        HashComparableMixin<ShadowedInstanceFieldResult>
    implements IJsonTransformable {
  ShadowedInstanceFieldResult._();

  factory ShadowedInstanceFieldResult({
    required final String fieldName,
  }) = _$ShadowedInstanceFieldResultCtor;

  @override
  ShadowedInstanceFieldResult clone({
    final String? fieldName,
  }) =>
      ShadowedInstanceFieldResult(
        fieldName: fieldName ?? this.fieldName,
      );

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* fieldName.hashableParts;
  }

  factory ShadowedInstanceFieldResult.fromJson(
          final Map<String, dynamic> json) =>
      _$ShadowedInstanceFieldResultFromJson(json);

  @override
  ShadowedInstanceFieldResult fromJson(final Map<String, dynamic> json) =>
      ShadowedInstanceFieldResult.fromJson(json);
}

@freezed
class InstanceFieldDeclarationsShadowedByConstructorParameters
    with
        _$InstanceFieldDeclarationsShadowedByConstructorParameters,
        HashKeyMixin<InstanceFieldDeclarationsShadowedByConstructorParameters>,
        HashComparableMixin<
            InstanceFieldDeclarationsShadowedByConstructorParameters>,
        SwarsAnalysisMixin<
            InstanceFieldDeclarationsShadowedByConstructorParameters,
            $InstanceFieldDeclarationsShadowedByConstructorParametersCopyWith<
                InstanceFieldDeclarationsShadowedByConstructorParameters>,
            List<ShadowedInstanceFieldResult>>,
        SwarsTermJsonTransformableListResultMixin {
  InstanceFieldDeclarationsShadowedByConstructorParameters._();

  factory InstanceFieldDeclarationsShadowedByConstructorParameters({
    required final SwidClass swidClass,
  }) = _$InstanceFieldDeclarationsShadowedByConstructorParametersCtor;

  @override
  String get cacheGroup =>
      "instanceFieldDeclarationsShadowedByConstructorParameters";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidClass.hashKey.hashableParts;
  }

  @override
  InstanceFieldDeclarationsShadowedByConstructorParameters clone({
    final SwidClass? swidClass,
  }) =>
      InstanceFieldDeclarationsShadowedByConstructorParameters(
        swidClass: swidClass ?? this.swidClass,
      );

  @override
  ShadowedInstanceFieldResult termResultDeserializer(
          final Map<String, dynamic> json) =>
      ShadowedInstanceFieldResult.fromJson(json);

  @override
  ISwarsTermResult<List<ShadowedInstanceFieldResult>> analyze({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromList(
        swidClass.constructorType != null
            ? swidClass.instanceFieldDeclarations.entries
                .where(
                  (x) =>
                      swidClass.constructorType!.normalParameterNames
                              .firstWhereOrNull(
                            (k) => x.key == k,
                          ) !=
                          null ||
                      swidClass.constructorType!.namedParameterTypes.entries
                              .firstWhereOrNull(
                            (k) => x.key == k.key,
                          ) !=
                          null,
                )
                .map(
                  (x) => ShadowedInstanceFieldResult(
                    fieldName: x.key,
                  ),
                )
                .whereNotNull()
                .toList()
            : [],
      );
}
