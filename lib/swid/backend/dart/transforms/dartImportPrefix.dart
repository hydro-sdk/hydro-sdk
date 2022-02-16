import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/transforms/sixteenthHashName.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsEphemeralTermMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'dartImportPrefix.freezed.dart';

@freezed
class DartImportPrefix
    with
        _$DartImportPrefix,
        HashKeyMixin<DartImportPrefix>,
        HashComparableMixin<DartImportPrefix>,
        SwarsTransformMixin<DartImportPrefix,
            $DartImportPrefixCopyWith<DartImportPrefix>, String>,
        SwarsEphemeralTermMixin,
        SwarsTermStringResultMixin {
  DartImportPrefix._();

  factory DartImportPrefix({
    required final SwidType swidType,
  }) = _$DartImportPrefixCtor;

  @override
  String get cacheGroup => "dartImportPrefix";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidType.hashKey.hashableParts;
  }

  @override
  DartImportPrefix clone({
    final SwidType? swidType,
  }) =>
      DartImportPrefix(
        swidType: swidType ?? this.swidType,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromValue(
        [
          "_",
          pipeline.reduceFromTerm(
            SixteenthHashName(
              str: swidType.originalPackagePath,
            ),
          )
        ].join(),
      );
}
