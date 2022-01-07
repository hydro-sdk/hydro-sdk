import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/transforms/mergeClassDeclarations.dart';
import 'package:hydro_sdk/swid/ir/util/swarsTermSwidClassResultMixin.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermJsonTransformableResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'applyMixins.freezed.dart';

@freezed
class ApplyMixins
    with
        _$ApplyMixins,
        HashKeyMixin<ApplyMixins>,
        HashComparableMixin<ApplyMixins>,
        SwarsTransformMixin<ApplyMixins, $ApplyMixinsCopyWith<ApplyMixins>,
            SwidClass>,
        SwarsTermJsonTransformableResultMixin,
        SwarsTermSwidClassResultMixin {
  ApplyMixins._();

  factory ApplyMixins({
    required final SwidClass swidClass,
  }) = _$ApplyMixinsCtor;

  @override
  String get cacheGroup => "applyMixins";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidClass.hashKey.hashableParts;
  }

  @override
  ApplyMixins clone({
    final SwidClass? swidClass,
  }) =>
      ApplyMixins(
        swidClass: swidClass ?? this.swidClass,
      );

  @override
  ISwarsTermResult<SwidClass> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromJsonTransformable(
        swidClass.mixedInClasses.isNotEmpty
            ? swidClass.mixedInClasses.fold<SwidClass>(
                swidClass,
                (previousValue, element) => pipeline.reduceFromTerm(
                  MergeClassDeclarations(
                    swidClass: previousValue,
                    superClass: element,
                  ),
                ),
              )
            : swidClass,
      );
}
