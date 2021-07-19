import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';

part 'swidiConstFunctionInvocation.freezed.dart';

@freezed
class SwidiConstFunctionInvocation
    with _$SwidiConstFunctionInvocation {
  const SwidiConstFunctionInvocation._();

  const factory SwidiConstFunctionInvocation({
    required String value,
    required List<SwidiConst> positionalParameters,
    required Map<String, SwidiConst> namedParameters,
  }) = _$SwidiConstFunctionInvocationCtor;

  factory SwidiConstFunctionInvocation.clone({
    required SwidiConstFunctionInvocation
        swidiConstFunctionInvocation,
    String? value,
    List<SwidiConst>? positionalParameters,
    Map<String, SwidiConst>? namedParameters,
  }) =>
      SwidiConstFunctionInvocation(
        value: value ?? swidiConstFunctionInvocation.value,
        positionalParameters: positionalParameters ??
            List.from(
              swidiConstFunctionInvocation.positionalParameters.map(
                (x) => SwidiConst.clone(
                  swidiConst: x,
                ),
              ),
            ),
        namedParameters: namedParameters ??
            Map.from(
              swidiConstFunctionInvocation.namedParameters.map(
                (key, value) => MapEntry(
                  key,
                  SwidiConst.clone(
                    swidiConst: value,
                  ),
                ),
              ),
            ),
      );
}
