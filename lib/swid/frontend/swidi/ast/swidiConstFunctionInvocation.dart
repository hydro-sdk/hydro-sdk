import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';

part 'swidiConstFunctionInvocation.freezed.dart';

@freezed
class SwidiConstFunctionInvocation with _$SwidiConstFunctionInvocation {
  const SwidiConstFunctionInvocation._();

  const factory SwidiConstFunctionInvocation({
    required final String value,
    required final List<SwidiConst> positionalParameters,
    required final Map<String, SwidiConst> namedParameters,
  }) = _$SwidiConstFunctionInvocationCtor;

  factory SwidiConstFunctionInvocation.clone({
    required final SwidiConstFunctionInvocation swidiConstFunctionInvocation,
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
