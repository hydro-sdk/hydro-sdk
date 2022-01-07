import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/transforms/transformToCamelCase.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'tsFunctionDefaultNamedPropsObjectName.freezed.dart';

@freezed
class TsFunctionDefaultNamedPropsObjectName
    with
        _$TsFunctionDefaultNamedPropsObjectName,
        HashKeyMixin<TsFunctionDefaultNamedPropsObjectName>,
        HashComparableMixin<TsFunctionDefaultNamedPropsObjectName>,
        SwarsTransformMixin<
            TsFunctionDefaultNamedPropsObjectName,
            $TsFunctionDefaultNamedPropsObjectNameCopyWith<
                TsFunctionDefaultNamedPropsObjectName>,
            String>,
        SwarsTermStringResultMixin {
  TsFunctionDefaultNamedPropsObjectName._();

  factory TsFunctionDefaultNamedPropsObjectName({
    required final SwidFunctionType swidFunctionType,
  }) = _$TsFunctionDefaultNamedPropsObjectNameCtor;

  @override
  String get cacheGroup => "tsFunctionDefaultNamedPropsObjectName";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* swidFunctionType.hashKey.hashableParts;
  }

  @override
  TsFunctionDefaultNamedPropsObjectName clone({
    final SwidFunctionType? swidFunctionType,
  }) =>
      TsFunctionDefaultNamedPropsObjectName(
        swidFunctionType: swidFunctionType ?? this.swidFunctionType,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        "${transformToCamelCase(
          str: swidFunctionType.name,
        )}DefaultProps",
      );
}
