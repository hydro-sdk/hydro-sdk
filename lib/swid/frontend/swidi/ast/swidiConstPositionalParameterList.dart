import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';

part 'swidiConstPositionalParameterList.freezed.dart';

@freezed
class SwidiConstPositionalParameterList
    with _$SwidiConstPositionalParameterList {
  const SwidiConstPositionalParameterList._();

  const factory SwidiConstPositionalParameterList({
    required List<SwidiConst> parameters,
  }) = _$SwidiConstPositionalParameterListCtor;

  factory SwidiConstPositionalParameterList.clone({
    required SwidiConstPositionalParameterList
        swidiConstPositionalParameterList,
    List<SwidiConst>? parameters,
  }) =>
      SwidiConstPositionalParameterList(
        parameters: parameters ??
            List.from(
              swidiConstPositionalParameterList.parameters
                  .map(
                    (x) => SwidiConst.clone(
                      swidiConst: x,
                    ),
                  )
                  .toList(),
            ),
      );
}
