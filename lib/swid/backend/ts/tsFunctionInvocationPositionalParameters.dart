import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'tsFunctionInvocationPositionalParameters.freezed.dart';

@freezed
class TsFunctionInvocationPositionalParameters
    with
        _$TsFunctionInvocationPositionalParameters,
        HashKeyMixin<TsFunctionInvocationPositionalParameters>,
        HashComparableMixin<TsFunctionInvocationPositionalParameters>,
        SwarsTransformMixin<
            TsFunctionInvocationPositionalParameters,
            $TsFunctionInvocationPositionalParametersCopyWith<
                TsFunctionInvocationPositionalParameters>,
            String>,
        SwarsTermStringResultMixin {
  TsFunctionInvocationPositionalParameters._();

  factory TsFunctionInvocationPositionalParameters({
    required final List<String> positionalReferences,
  }) = _$TsFunctionInvocationPositionalParametersCtor;

  @override
  String get cacheGroup => "tsFunctionInvocationPositionalParameters";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* positionalReferences.hashableParts;
  }

  @override
  TsFunctionInvocationPositionalParameters clone({
    final List<String>? positionalReferences,
  }) =>
      TsFunctionInvocationPositionalParameters(
        positionalReferences: positionalReferences ?? this.positionalReferences,
      );

  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        positionalReferences.isNotEmpty
            ? positionalReferences.map((x) => x).join(", ")
            : "",
      );
}
