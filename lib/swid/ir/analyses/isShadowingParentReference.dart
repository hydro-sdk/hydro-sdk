import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/analyses/collectShadowingReferences.dart';

import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsAnalysisMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsEphemeralTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermBoolResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/transforms/removeNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'isShadowingParentReference.freezed.dart';

@freezed
class IsShadowingParentReference
    with
        _$IsShadowingParentReference,
        HashKeyMixin<IsShadowingParentReference>,
        HashComparableMixin<IsShadowingParentReference>,
        SwarsAnalysisMixin<
            IsShadowingParentReference,
            $IsShadowingParentReferenceCopyWith<IsShadowingParentReference>,
            bool>,
        SwarsEphemeralTermMixin,
        SwarsTermBoolResultMixin {
  IsShadowingParentReference._();

  factory IsShadowingParentReference({
    required final SwidType parent,
    required final SwidType reference,
    @Default(false) final bool includeFirstOrderSuperClassReferences,
    @Default(true) final bool includeFirstOrderSuperClass,
  }) = _$IsShadowingParentReferenceCtor;

  @override
  String get cacheGroup => "IsShadowingParentReference";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* parent.hashKey.hashableParts;
    yield* reference.hashKey.hashableParts;
    yield [
      ...includeFirstOrderSuperClassReferences.hashableParts,
    ];
    yield [
      ...includeFirstOrderSuperClass.hashableParts,
    ];
  }

  @override
  IsShadowingParentReference clone({
    final SwidType? parent,
    final SwidType? reference,
    final bool? includeFirstOrderSuperClassReferences,
    final bool? includeFirstOrderSuperClass,
  }) =>
      IsShadowingParentReference(
        parent: parent ?? this.parent,
        reference: reference ?? this.reference,
        includeFirstOrderSuperClassReferences:
            includeFirstOrderSuperClassReferences ??
                this.includeFirstOrderSuperClassReferences,
        includeFirstOrderSuperClass:
            includeFirstOrderSuperClass ?? this.includeFirstOrderSuperClass,
      );

  @override
  ISwarsTermResult<bool> analyze({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromValue(parent.when(
        fromSwidInterface: (_) => false,
        fromSwidClass: (_) => reference.when(
          fromSwidInterface: (val) =>
              pipeline
                  .reduceFromTerm(
                    CollectShadowingReferences(
                      swidType: parent,
                      includeFirstOrderSuperClass: includeFirstOrderSuperClass,
                      includeFirstOrderSuperClassReferences:
                          includeFirstOrderSuperClassReferences,
                    ),
                  )
                  .firstWhereOrNull(
                    (x) =>
                        removeNullabilitySuffix(
                              str: x.name,
                            ) ==
                            removeNullabilitySuffix(
                              str: val.name,
                            ) &&
                        x.originalPackagePath == val.originalPackagePath,
                  ) !=
              null,
          fromSwidClass: (_) => false,
          fromSwidDefaultFormalParameter: (_) => false,
          fromSwidFunctionType: (_) => false,
        ),
        fromSwidDefaultFormalParameter: (_) => false,
        fromSwidFunctionType: (_) => false,
      ));
}
