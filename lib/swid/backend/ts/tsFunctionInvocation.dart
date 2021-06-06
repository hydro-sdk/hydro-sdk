import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/backend/ts/tsFunctionInvocationNamedParameters.dart';
import 'package:hydro_sdk/swid/backend/ts/tsFunctionInvocationPositionalParameters.dart';

part 'tsFunctionInvocation.freezed.dart';
part 'tsFunctionInvocation.g.dart';

@freezed
class TsFunctionInvocation with _$TsFunctionInvocation {
  factory TsFunctionInvocation({
    required String functionReference,
    required TsFunctionInvocationPositionalParameters
        tsFunctionInvocationPositionalParameters,
    required List<TsFunctionInvocationNamedParameters>
        tsFunctionInvocationNamedParameters,
  }) = _$Data;

  factory TsFunctionInvocation.fromJson(Map<String, dynamic> json) =>
      _$TsFunctionInvocationFromJson(json);
}

extension TsFunctionInvocationMethods on TsFunctionInvocation {
  String _namedParametersToTsSource() =>
      tsFunctionInvocationNamedParameters.map((x) => x.toTsSource()).join();
  String toTsSource() =>
      "${functionReference}(${tsFunctionInvocationPositionalParameters.toTsSource()}${tsFunctionInvocationPositionalParameters.toTsSource().isNotEmpty && _namedParametersToTsSource().isNotEmpty ? ", " : ""}${_namedParametersToTsSource()});";
}
