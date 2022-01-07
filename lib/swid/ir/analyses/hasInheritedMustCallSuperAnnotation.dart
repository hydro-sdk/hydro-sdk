import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsAnalysisMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermBoolResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'hasInheritedMustCallSuperAnnotation.freezed.dart';

@freezed
class HasInheritedMustCallSuperAnnotation
    with
        _$HasInheritedMustCallSuperAnnotation,
        HashKeyMixin<HasInheritedMustCallSuperAnnotation>,
        HashComparableMixin<HasInheritedMustCallSuperAnnotation>,
        SwarsAnalysisMixin<
            HasInheritedMustCallSuperAnnotation,
            $HasInheritedMustCallSuperAnnotationCopyWith<
                HasInheritedMustCallSuperAnnotation>,
            bool>,
        SwarsTermBoolResultMixin {
  HasInheritedMustCallSuperAnnotation._();

  factory HasInheritedMustCallSuperAnnotation({
    required final SwidFunctionType swidFunctionType,
    required final SwidClass swidClass,
  }) = _$HasInheritedMustCallSuperAnnotationCtor;

  @override
  String get cacheGroup => "hasInheritedMustCallSuperAnnotation";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidFunctionType.hashKey.hashableParts;
    yield* swidClass.hashKey.hashableParts;
  }

  @override
  HasInheritedMustCallSuperAnnotation clone({
    final SwidFunctionType? swidFunctionType,
    final SwidClass? swidClass,
  }) =>
      HasInheritedMustCallSuperAnnotation(
        swidFunctionType: swidFunctionType ?? this.swidFunctionType,
        swidClass: swidClass ?? this.swidClass,
      );

  @override
  ISwarsTermResult<bool> analyze({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromBool(
        swidClass.methods.firstWhereOrNull(
                  (x) =>
                      x.name == swidFunctionType.name &&
                      x.declarationModifiers.hasMustCallSuper,
                ) !=
                null ||
            (swidClass.extendedClass != null
                ? pipeline.reduceFromTerm(
                    HasInheritedMustCallSuperAnnotation(
                      swidClass: swidClass.extendedClass!,
                      swidFunctionType: swidFunctionType,
                    ),
                  )
                : false) ||
            [
                  ...swidClass.implementedClasses,
                  ...swidClass.mixedInClasses,
                ]
                    .map(
                      (x) => pipeline.reduceFromTerm(
                        HasInheritedMustCallSuperAnnotation(
                          swidClass: x,
                          swidFunctionType: swidFunctionType,
                        ),
                      ),
                    )
                    .firstWhereOrNull(
                      (x) => x == true,
                    ) !=
                null,
      );
}
