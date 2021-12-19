import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'tsFunctionInvocationNamedParametersKeyValue.freezed.dart';

@freezed
class TsFunctionInvocationNamedParametersKeyValue
    with
        _$TsFunctionInvocationNamedParametersKeyValue,
        HashKeyMixin<TsFunctionInvocationNamedParametersKeyValue>,
        HashComparableMixin<TsFunctionInvocationNamedParametersKeyValue>,
        SwarsTransformMixin<
            TsFunctionInvocationNamedParametersKeyValue,
            $TsFunctionInvocationNamedParametersKeyValueCopyWith<
                TsFunctionInvocationNamedParametersKeyValue>,
            String>,
        SwarsTermStringResultMixin {
  TsFunctionInvocationNamedParametersKeyValue._();

  factory TsFunctionInvocationNamedParametersKeyValue({
    required final Map<String, String> namedReferences,
  }) = _$TsFunctionInvocationNamedParametersKeyValueCtor;

  @override
  String get cacheGroup => "tsFunctionInvocationNamedParametersKeyValue";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* namedReferences.hashableParts;
  }

  @override
  TsFunctionInvocationNamedParametersKeyValue clone({
    final Map<String, String>? namedReferences,
  }) =>
      TsFunctionInvocationNamedParametersKeyValue(
        namedReferences: namedReferences ?? this.namedReferences,
      );

  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        namedReferences.entries
            .map((x) => "${x.key}: ${x.value}")
            .toList()
            .join(",\n"),
      );
}
