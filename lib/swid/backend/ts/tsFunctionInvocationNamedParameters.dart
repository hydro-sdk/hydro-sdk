import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/tsFunctionInvocationNamedParametersKeyValue.dart';
import 'package:hydro_sdk/swid/backend/ts/tsFunctionInvocationNamedParametersSpread.dart';
import 'package:hydro_sdk/swid/swars/iSwarsPipeline.dart';
import 'package:hydro_sdk/swid/swars/swarsTermResult.dart';
import 'package:hydro_sdk/swid/swars/swarsTermStringResultMixin.dart';
import 'package:hydro_sdk/swid/swars/swarsTransformMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'tsFunctionInvocationNamedParameters.freezed.dart';

@freezed
class TsFunctionInvocationNamedParameters
    with
        _$TsFunctionInvocationNamedParameters,
        HashKeyMixin<TsFunctionInvocationNamedParameters>,
        HashComparableMixin<TsFunctionInvocationNamedParameters>,
        SwarsTransformMixin<TsFunctionInvocationNamedParameters, Object,
            String>,
        SwarsTermStringResultMixin {
  TsFunctionInvocationNamedParameters._();

  factory TsFunctionInvocationNamedParameters.fromSpread({
    required final TsFunctionInvocationNamedParametersSpread
        tsFunctionInvocationNamedParametersSpread,
  }) = _$TsFunctionInvocationNamedParametersFromSpread;
  factory TsFunctionInvocationNamedParameters.fromKeyValue({
    required final TsFunctionInvocationNamedParametersKeyValue
        tsFunctionInvocationNamedParametersKeyValue,
  }) = _$TsFunctionInvocationNamedParametersFromKeyValue;

  @override
  String get cacheGroup => "tsFunctionInvocationNamedParameters";

  @override
  Iterable<Iterable<int>> get hashableParts => when(
        fromSpread: (val) => val.hashKey.hashableParts,
        fromKeyValue: (val) => val.hashKey.hashableParts,
      );

  @override
  TsFunctionInvocationNamedParameters clone() => when(
        fromSpread: (val) => TsFunctionInvocationNamedParameters.fromSpread(
          tsFunctionInvocationNamedParametersSpread: val,
        ),
        fromKeyValue: (val) => TsFunctionInvocationNamedParameters.fromKeyValue(
          tsFunctionInvocationNamedParametersKeyValue: val,
        ),
      );

  @override
  Object get copyWith => when(
        fromSpread: (val) => $TsFunctionInvocationNamedParametersCopyWith(
          TsFunctionInvocationNamedParameters.fromSpread(
            tsFunctionInvocationNamedParametersSpread: val,
          ),
          (val) => val,
        ),
        fromKeyValue: (val) => $TsFunctionInvocationNamedParametersCopyWith(
          TsFunctionInvocationNamedParameters.fromKeyValue(
            tsFunctionInvocationNamedParametersKeyValue: val,
          ),
          (val) => val,
        ),
      );
  @override
  ISwarsTermResult<String> transform({
    required final ISwarsPipeline pipeline,
  }) =>
      SwarsTermResult.fromString(
        [
          "{",
          when(
            fromSpread: (val) => pipeline.reduceFromTerm(
              val,
            ),
            fromKeyValue: (val) => pipeline.reduceFromTerm(
              val,
            ),
          ),
          "}"
        ].join("\n"),
      );
}
