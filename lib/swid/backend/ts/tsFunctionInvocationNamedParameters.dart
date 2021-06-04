import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/backend/ts/tsFunctionInvocationNamedParametersKeyValue.dart';
import 'package:hydro_sdk/swid/backend/ts/tsFunctionInvocationNamedParametersSpread.dart';

part 'tsFunctionInvocationNamedParameters.freezed.dart';
part 'tsFunctionInvocationNamedParameters.g.dart';

@freezed
class TsFunctionInvocationNamedParameters
    with _$TsFunctionInvocationNamedParameters {
  factory TsFunctionInvocationNamedParameters.fromSpread(
      {required
          TsFunctionInvocationNamedParametersSpread
              tsFunctionInvocationNamedParametersSpread}) = _$FromSpread;
  factory TsFunctionInvocationNamedParameters.fromKeyValue(
      {required
          TsFunctionInvocationNamedParametersKeyValue
              tsFunctionInvocationNamedParametersKeyValue}) = _$FromKeyValue;

  factory TsFunctionInvocationNamedParameters.fromJson(
          Map<String, dynamic> json) =>
      _$TsFunctionInvocationNamedParametersFromJson(json);
}

extension TsFunctionInvocationNamedParametersMethods
    on TsFunctionInvocationNamedParameters {
  String toTsSource() => [
        "{",
        when(
          fromSpread: (val) => val.toTsSource(),
          fromKeyValue: (val) => val.toTsSource(),
        ),
        "}"
      ].join("\n");
}
