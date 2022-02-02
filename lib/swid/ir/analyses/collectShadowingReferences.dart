import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/analyses/collectAllReferences.dart';

import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/util/interfaceTermListResultMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsAnalysisMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsEphemeralTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/transforms/removeNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'collectShadowingReferences.freezed.dart';

@freezed
class CollectShadowingReferences
    with
        _$CollectShadowingReferences,
        HashKeyMixin<CollectShadowingReferences>,
        HashComparableMixin<CollectShadowingReferences>,
        SwarsAnalysisMixin<
            CollectShadowingReferences,
            $CollectShadowingReferencesCopyWith<CollectShadowingReferences>,
            List<SwidInterface>>,
        SwarsEphemeralTermMixin,
        InterfaceTermListResultMixin {
  CollectShadowingReferences._();

  factory CollectShadowingReferences({
    required final SwidType swidType,
    @Default(false) final bool includeFirstOrderSuperClassReferences,
    @Default(true) final bool includeFirstOrderSuperClass,
  }) = _$CollectShadowingReferencesCtor;

  @override
  String get cacheGroup => "collectShadowingReferences";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidType.hashKey.hashableParts;
    yield [
      ...includeFirstOrderSuperClassReferences.hashableParts,
    ];
    yield [
      ...includeFirstOrderSuperClass.hashableParts,
    ];
  }

  @override
  CollectShadowingReferences clone({
    final SwidType? swidType,
    final bool? includeFirstOrderSuperClassReferences,
    final bool? includeFirstOrderSuperClass,
  }) =>
      CollectShadowingReferences(
        swidType: swidType ?? this.swidType,
        includeFirstOrderSuperClassReferences:
            includeFirstOrderSuperClassReferences ??
                this.includeFirstOrderSuperClassReferences,
        includeFirstOrderSuperClass:
            includeFirstOrderSuperClass ?? this.includeFirstOrderSuperClass,
      );

  @override
  ISwarsTermResult<List<SwidInterface>> analyze({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromValue(swidType.when(
        fromSwidInterface: (_) => [],
        fromSwidClass: (val) => pipeline
            .reduceFromTerm(
              CollectAllReferences(
                swidType: swidType,
              ),
            )
            .where(
              (x) =>
                  removeNullabilitySuffix(
                        str: x.name,
                      ) ==
                      removeNullabilitySuffix(
                        str: swidType.name,
                      ) &&
                  x.originalPackagePath != swidType.originalPackagePath,
            )
            .toList(),
        fromSwidDefaultFormalParameter: (_) => [],
        fromSwidFunctionType: (_) => [],
      ));
}
