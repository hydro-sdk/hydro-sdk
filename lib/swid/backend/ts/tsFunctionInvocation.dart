import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/tsFunctionInvocationNamedParameters.dart';
import 'package:hydro_sdk/swid/backend/ts/tsFunctionInvocationPositionalParameters.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'tsFunctionInvocation.freezed.dart';

@freezed
class TsFunctionInvocation
    with
        _$TsFunctionInvocation,
        HashKeyMixin<TsFunctionInvocation>,
        HashComparableMixin<TsFunctionInvocation>,
        SwarsTransformMixin<TsFunctionInvocation,
            $TsFunctionInvocationCopyWith<TsFunctionInvocation>, String>,
        SwarsTermStringResultMixin {
  TsFunctionInvocation._();

  factory TsFunctionInvocation({
    required final String functionReference,
    required final TsFunctionInvocationPositionalParameters
        tsFunctionInvocationPositionalParameters,
    required final List<TsFunctionInvocationNamedParameters>
        tsFunctionInvocationNamedParameters,
  }) = _$TsFunctionInvocationCtor;

  @override
  String get cacheGroup => "tsFunctionInvocation";

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* functionReference.hashableParts;
    yield* tsFunctionInvocationPositionalParameters.hashKey.hashableParts;
    yield* tsFunctionInvocationNamedParameters.hashableParts;
  }

  @override
  TsFunctionInvocation clone({
    final String? functionReference,
    final TsFunctionInvocationPositionalParameters?
        tsFunctionInvocationPositionalParameters,
    final List<TsFunctionInvocationNamedParameters>?
        tsFunctionInvocationNamedParameters,
  }) =>
      TsFunctionInvocation(
        functionReference: functionReference ?? this.functionReference,
        tsFunctionInvocationPositionalParameters:
            tsFunctionInvocationPositionalParameters ??
                this.tsFunctionInvocationPositionalParameters,
        tsFunctionInvocationNamedParameters:
            tsFunctionInvocationNamedParameters ??
                this.tsFunctionInvocationNamedParameters,
      );

  String _namedParametersToTsSource(final ISwarsPipeline pipeline) =>
      tsFunctionInvocationNamedParameters
          .map((x) => pipeline.reduceFromTerm(x))
          .join();

  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        "${functionReference}(${pipeline.reduceFromTerm(
          tsFunctionInvocationPositionalParameters,
        )}${pipeline.reduceFromTerm(
                  tsFunctionInvocationPositionalParameters,
                ).isNotEmpty && _namedParametersToTsSource(
              pipeline,
            ).isNotEmpty ? ", " : ""}${_namedParametersToTsSource(
          pipeline,
        )});",
      );
}
