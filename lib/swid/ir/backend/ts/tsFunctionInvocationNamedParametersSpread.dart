import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'tsFunctionInvocationNamedParametersSpread.freezed.dart';
part 'tsFunctionInvocationNamedParametersSpread.g.dart';

@freezed
abstract class TsFunctionInvocationNamedParametersSpread
    with _$TsFunctionInvocationNamedParametersSpread {
  factory TsFunctionInvocationNamedParametersSpread(
      {@required List<String> references}) = _$Data;

  factory TsFunctionInvocationNamedParametersSpread.fromJson(
          Map<String, dynamic> json) =>
      _$TsFunctionInvocationNamedParametersSpreadFromJson(json);
}
