import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/irTermListResultMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsAnalysisMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'instanceFieldDeclarationsShadowedByConstructorParameters.freezed.dart';

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
            List<SwidType>>,
        IrTermListResultMixin {
  InstanceFieldDeclarationsShadowedByConstructorParameters._();

  factory InstanceFieldDeclarationsShadowedByConstructorParameters({
    required final SwidClass swidClass,
  }) = _$InstanceFieldDeclarationsShadowedByConstructorParametersCtor;

  @override
  String get cacheGroup =>
      "instanceFieldDeclarationsShadowedByConstructorParameters";

  @override
  late final List<int> hashableParts = [
    ...swidClass.hashKey.hashableParts,
  ];

  @override
  InstanceFieldDeclarationsShadowedByConstructorParameters clone({
    final SwidClass? swidClass,
  }) =>
      InstanceFieldDeclarationsShadowedByConstructorParameters(
        swidClass: swidClass ?? this.swidClass,
      );

  @override
  ISwarsTermResult<List<SwidType>> analyze({
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
                  (x) => x.value,
                )
                .whereNotNull()
                .toList()
            : [],
      );
}
