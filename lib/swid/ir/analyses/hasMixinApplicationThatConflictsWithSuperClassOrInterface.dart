import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/transforms/applySuperTypes.dart';
import 'package:hydro_sdk/swid/ir/util/conflictingInstanceMembers.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermBoolResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'hasMixinApplicationThatConflictsWithSuperClassOrInterface.freezed.dart';

@freezed
class HasMixinApplicationThatConflictsWithSuperClassOrInterface
    with
        _$HasMixinApplicationThatConflictsWithSuperClassOrInterface,
        HashKeyMixin<HasMixinApplicationThatConflictsWithSuperClassOrInterface>,
        HashComparableMixin<
            HasMixinApplicationThatConflictsWithSuperClassOrInterface>,
        SwarsTransformMixin<
            HasMixinApplicationThatConflictsWithSuperClassOrInterface,
            $HasMixinApplicationThatConflictsWithSuperClassOrInterfaceCopyWith<
                HasMixinApplicationThatConflictsWithSuperClassOrInterface>,
            bool>,
        SwarsTermBoolResultMixin {
  HasMixinApplicationThatConflictsWithSuperClassOrInterface._();

  factory HasMixinApplicationThatConflictsWithSuperClassOrInterface({
    required final SwidClass swidClass,
  }) = _$HasMixinApplicationThatConflictsWithSuperClassOrInterfaceCtor;

  @override
  String get cacheGroup =>
      "hasMixinApplicationThatConflictsWithSuperClassOrInterface";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidClass.hashKey.hashableParts;
  }

  @override
  HasMixinApplicationThatConflictsWithSuperClassOrInterface clone({
    final SwidClass? swidClass,
  }) =>
      HasMixinApplicationThatConflictsWithSuperClassOrInterface(
        swidClass: swidClass ?? this.swidClass,
      );

  @override
  ISwarsTermResult<bool> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromBool(
        swidClass.implementedClasses.firstWhereOrNull(
                  (x) => swidClass.mixedInClasses
                      .map(
                        (k) => (({
                          required final ConflictingInstanceMembersResult
                              conflictingInstanceMembersResult,
                        }) =>
                            conflictingInstanceMembersResult
                                .instanceFields.isNotEmpty ||
                            conflictingInstanceMembersResult
                                .methods.isNotEmpty)(
                          conflictingInstanceMembersResult:
                              conflictingInstanceMembers(
                            first: pipeline.reduceFromTerm(
                              ApplySuperTypes(
                                swidClass: x,
                              ),
                            ),
                            second: pipeline.reduceFromTerm(
                              ApplySuperTypes(
                                swidClass: k,
                              ),
                            ),
                          ),
                        ),
                      )
                      .any(
                        (e) => e,
                      ),
                ) !=
                null ||
            (swidClass.extendedClass != null &&
                swidClass.mixedInClasses
                    .map(
                      (k) => (({
                        required final ConflictingInstanceMembersResult
                            conflictingInstanceMembersResult,
                      }) =>
                          conflictingInstanceMembersResult
                              .instanceFields.isNotEmpty ||
                          conflictingInstanceMembersResult.methods.isNotEmpty)(
                        conflictingInstanceMembersResult:
                            conflictingInstanceMembers(
                          first: pipeline.reduceFromTerm(
                            ApplySuperTypes(
                              swidClass: swidClass.extendedClass!,
                            ),
                          ),
                          second: pipeline.reduceFromTerm(
                            ApplySuperTypes(
                              swidClass: k,
                            ),
                          ),
                        ),
                      ),
                    )
                    .any(
                      (e) => e,
                    )),
      );
}
