import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/transforms/transformSixteenthHashName.dart';
import 'package:hydro_sdk/swid/ir/analyses/isShadowingParentReference.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsEphemeralTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'maybeTransformSixteenthHashName.freezed.dart';

@freezed
class MaybeTransformSixteenthHashName
    with
        _$MaybeTransformSixteenthHashName,
        HashKeyMixin<MaybeTransformSixteenthHashName>,
        HashComparableMixin<MaybeTransformSixteenthHashName>,
        SwarsTransformMixin<
            MaybeTransformSixteenthHashName,
            $MaybeTransformSixteenthHashNameCopyWith<
                MaybeTransformSixteenthHashName>,
            String>,
        SwarsEphemeralTermMixin,
        SwarsTermStringResultMixin {
  MaybeTransformSixteenthHashName._();

  factory MaybeTransformSixteenthHashName({
    required final SwidType parent,
    required final SwidType reference,
    @Default(false) final bool includeFirstOrderSuperClassReferences,
    @Default(true) final bool includeFirstOrderSuperClass,
  }) = _$MaybeTransformSixteenthHashNameCtor;

  @override
  String get cacheGroup => "maybeTransformSixteenthHashName";

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
  MaybeTransformSixteenthHashName clone({
    final SwidType? parent,
    final SwidType? reference,
    final bool? includeFirstOrderSuperClassReferences,
    final bool? includeFirstOrderSuperClass,
  }) =>
      MaybeTransformSixteenthHashName(
        parent: parent ?? this.parent,
        reference: reference ?? this.reference,
        includeFirstOrderSuperClassReferences:
            includeFirstOrderSuperClassReferences ??
                this.includeFirstOrderSuperClassReferences,
        includeFirstOrderSuperClass:
            includeFirstOrderSuperClass ?? this.includeFirstOrderSuperClass,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromValue(
        pipeline.reduceFromTerm(
          IsShadowingParentReference(
            parent: parent,
            reference: reference,
            includeFirstOrderSuperClass: includeFirstOrderSuperClass,
            includeFirstOrderSuperClassReferences:
                includeFirstOrderSuperClassReferences,
          ),
        )
            ? pipeline.reduceFromTerm(
                TransformSixteenthHashName(
                  swidType: reference,
                ),
              )
            : reference.name,
      );
}
