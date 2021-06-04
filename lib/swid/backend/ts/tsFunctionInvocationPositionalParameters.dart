import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'tsFunctionInvocationPositionalParameters.freezed.dart';
part 'tsFunctionInvocationPositionalParameters.g.dart';

@freezed
abstract class TsFunctionInvocationPositionalParameters
    with _$TsFunctionInvocationPositionalParameters {
  factory TsFunctionInvocationPositionalParameters(
      {required List<String?> positionalReferences}) = _$Data;

  factory TsFunctionInvocationPositionalParameters.fromJson(
          Map<String, dynamic> json) =>
      _$TsFunctionInvocationPositionalParametersFromJson(json);
}

extension TsFunctionInvocationPositionalParametersMethods
    on TsFunctionInvocationPositionalParameters {
  String toTsSource() => positionalReferences.isNotEmpty
      ? positionalReferences.map((x) => x).join(", ")
      : "";
}
