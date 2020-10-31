import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'tsFunctionInvocationNamedParametersKeyValue.freezed.dart';
part 'tsFunctionInvocationNamedParametersKeyValue.g.dart';

@freezed
abstract class TsFunctionInvocationNamedParametersKeyValue
    with _$TsFunctionInvocationNamedParametersKeyValue {
  factory TsFunctionInvocationNamedParametersKeyValue(
      {@required Map<String, String> namedReferences}) = _$Data;

  factory TsFunctionInvocationNamedParametersKeyValue.fromJson(
          Map<String, dynamic> json) =>
      _$TsFunctionInvocationNamedParametersKeyValueFromJson(json);
}
