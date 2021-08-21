import 'package:freezed_annotation/freezed_annotation.dart';

part 'tsFunctionInvocationNamedParametersSpread.freezed.dart';
part 'tsFunctionInvocationNamedParametersSpread.g.dart';

@freezed
class TsFunctionInvocationNamedParametersSpread
    with _$TsFunctionInvocationNamedParametersSpread {
  factory TsFunctionInvocationNamedParametersSpread(
      {required final List<String> references}) = _$Data;

  factory TsFunctionInvocationNamedParametersSpread.fromJson(
          Map<String, dynamic> json) =>
      _$TsFunctionInvocationNamedParametersSpreadFromJson(json);
}

extension TsFunctionInvocationNamedParametersSpreadMethods
    on TsFunctionInvocationNamedParametersSpread {
  String toTsSource() => references.map((x) => "...${x}").toList().join(",\n");
}
