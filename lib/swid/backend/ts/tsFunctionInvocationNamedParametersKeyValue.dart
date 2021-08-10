import 'package:freezed_annotation/freezed_annotation.dart';

part 'tsFunctionInvocationNamedParametersKeyValue.freezed.dart';
part 'tsFunctionInvocationNamedParametersKeyValue.g.dart';

@freezed
class TsFunctionInvocationNamedParametersKeyValue
    with _$TsFunctionInvocationNamedParametersKeyValue {
  factory TsFunctionInvocationNamedParametersKeyValue(
      {required final Map<String, String> namedReferences}) = _$Data;

  factory TsFunctionInvocationNamedParametersKeyValue.fromJson(
          Map<String, dynamic> json) =>
      _$TsFunctionInvocationNamedParametersKeyValueFromJson(json);
}

extension TsFunctionInvocationNamedParametersKeyValueMethods
    on TsFunctionInvocationNamedParametersKeyValue {
  String toTsSource() => namedReferences.entries
      .map((x) => "${x.key}: ${x.value}")
      .toList()
      .join(",\n");
}
