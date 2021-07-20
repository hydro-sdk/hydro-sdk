import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstNamedParameter.dart';

part 'swidiConstParameterList.freezed.dart';

@freezed
class SwidiConstParameterList with _$SwidiConstParameterList {
  const SwidiConstParameterList._();

  const factory SwidiConstParameterList({
    required List<SwidiConst> positionalParameters,
    required List<SwidiConstNamedParameter> namedParameters,
  }) = _$SwidiConstParameterListCtor;

  factory SwidiConstParameterList.clone({
    required SwidiConstParameterList swidiConstParameterList,
    List<SwidiConst>? positionalParameters,
    List<SwidiConstNamedParameter>? namedParameters,
  }) =>
      SwidiConstParameterList(
        positionalParameters: positionalParameters ??
            List.from(
              swidiConstParameterList.positionalParameters
                  .map(
                    (x) => SwidiConst.clone(
                      swidiConst: x,
                    ),
                  )
                  .toList(),
            ),
        namedParameters: namedParameters ??
            List.from(
              swidiConstParameterList.namedParameters
                  .map(
                    (x) => SwidiConstNamedParameter.clone(
                      swidiConstNamedParameter: x,
                    ),
                  )
                  .toList(),
            ),
      );
}
