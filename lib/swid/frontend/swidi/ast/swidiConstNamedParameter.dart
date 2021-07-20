import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';

part 'swidiConstNamedParameter.freezed.dart';

@freezed
class SwidiConstNamedParameter with _$SwidiConstNamedParameter {
  const SwidiConstNamedParameter._();

  const factory SwidiConstNamedParameter({
    required String name,
    required SwidiConst value,
  }) = _$SwidiConstNamedParameterCtor;

  factory SwidiConstNamedParameter.clone({
    required SwidiConstNamedParameter swidiConstNamedParameter,
    String? name,
    SwidiConst? value,
  }) =>
      SwidiConstNamedParameter(
        name: name ?? swidiConstNamedParameter.name,
        value: value ??
            SwidiConst.clone(
              swidiConst: swidiConstNamedParameter.value,
            ),
      );
}
