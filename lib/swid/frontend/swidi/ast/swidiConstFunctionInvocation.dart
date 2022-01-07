import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidiConstFunctionInvocation.freezed.dart';

@freezed
class SwidiConstFunctionInvocation
    with
        _$SwidiConstFunctionInvocation,
        HashKeyMixin<SwidiConstFunctionInvocation>,
        HashComparableMixin<SwidiConstFunctionInvocation>
    implements
        ICopyable<
            SwidiConstFunctionInvocation,
            $SwidiConstFunctionInvocationCopyWith<
                SwidiConstFunctionInvocation>> {
  SwidiConstFunctionInvocation._();

  factory SwidiConstFunctionInvocation({
    required final String value,
    required final List<SwidiConst> positionalParameters,
    required final Map<String, SwidiConst> namedParameters,
  }) = _$SwidiConstFunctionInvocationCtor;

  factory SwidiConstFunctionInvocation._clone({
    required final SwidiConstFunctionInvocation swidiConstFunctionInvocation,
    final String? value,
    final List<SwidiConst>? positionalParameters,
    final Map<String, SwidiConst>? namedParameters,
  }) =>
      SwidiConstFunctionInvocation(
        value: value ?? swidiConstFunctionInvocation.value,
        positionalParameters: positionalParameters ??
            List.from(
              swidiConstFunctionInvocation.positionalParameters.map(
                (x) => x.clone(),
              ),
            ),
        namedParameters: namedParameters ??
            Map.from(
              swidiConstFunctionInvocation.namedParameters.map(
                (key, value) => MapEntry(key, value.clone()),
              ),
            ),
      );

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* value.hashableParts;
    yield* positionalParameters.hashableParts;
    yield* namedParameters.hashableParts;
  }

  @override
  SwidiConstFunctionInvocation clone({
    final String? value,
    final List<SwidiConst>? positionalParameters,
    final Map<String, SwidiConst>? namedParameters,
  }) =>
      SwidiConstFunctionInvocation._clone(
        swidiConstFunctionInvocation: this,
        value: value,
        positionalParameters: positionalParameters,
        namedParameters: namedParameters,
      );
}
