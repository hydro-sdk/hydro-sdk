import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstNamedParameter.dart';

part 'swidiConstNamedParameterList.freezed.dart';

@freezed
class SwidiConstNamedParameterList with _$SwidiConstNamedParameterList {
  const SwidiConstNamedParameterList._();

  const factory SwidiConstNamedParameterList({
    required List<SwidiConstNamedParameter> parameters,
  }) = _$SwidiConstNamedParameterListCtor;

  factory SwidiConstNamedParameterList.clone({
    required SwidiConstNamedParameterList swidiConstNamedParameterList,
    List<SwidiConstNamedParameter>? parameters,
  }) =>
      SwidiConstNamedParameterList(
        parameters: parameters ??
            List.from(
              swidiConstNamedParameterList.parameters
                  .map(
                    (x) => SwidiConstNamedParameter.clone(
                      swidiConstNamedParameter: x,
                    ),
                  )
                  .toList(),
            ),
      );
}
