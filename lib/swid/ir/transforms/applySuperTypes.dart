import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/transforms/applyInterfaces.dart';
import 'package:hydro_sdk/swid/ir/transforms/applyMixins.dart';
import 'package:hydro_sdk/swid/ir/transforms/mergeClassDeclarations.dart';
import 'package:hydro_sdk/swid/ir/util/swarsTermSwidClassResultMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'applySuperTypes.freezed.dart';

@freezed
class ApplySuperTypes
    with
        _$ApplySuperTypes,
        HashKeyMixin<ApplySuperTypes>,
        HashComparableMixin<ApplySuperTypes>,
        SwarsTransformMixin<ApplySuperTypes,
            $ApplySuperTypesCopyWith<ApplySuperTypes>, SwidClass>,
        SwarsTermJsonTransformableResultMixin,
        SwarsTermSwidClassResultMixin {
  ApplySuperTypes._();

  factory ApplySuperTypes({
    required final SwidClass swidClass,
  }) = _$ApplySuperTypesCtor;

  @override
  String get cacheGroup => "applySuperTypes";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidClass.hashKey.hashableParts;
  }

  @override
  ApplySuperTypes clone({
    final SwidClass? swidClass,
  }) =>
      ApplySuperTypes(
        swidClass: swidClass ?? this.swidClass,
      );

  @override
  ISwarsTermResult<SwidClass> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromJsonTransformable(
        pipeline.reduceFromTerm(
          ApplyInterfaces(
            swidClass: pipeline.reduceFromTerm(
              MergeClassDeclarations(
                swidClass: pipeline.reduceFromTerm(
                  ApplyMixins(
                    swidClass: swidClass,
                  ),
                ),
                superClass: swidClass.extendedClass != null
                    ? pipeline.reduceFromTerm(
                        ApplySuperTypes(
                          swidClass: swidClass.extendedClass!,
                        ),
                      )
                    : swidClass.extendedClass,
              ),
            ),
          ),
        ),
      );
}
