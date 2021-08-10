import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiOptionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiPositionalParameter.dart';

part 'swidiPositionalOrOptionalOrNamedParameter.freezed.dart';

@freezed
class SwidiPositionalOrOptionalOrNamedParameter
    with _$SwidiPositionalOrOptionalOrNamedParameter {
  factory SwidiPositionalOrOptionalOrNamedParameter.clone({
    required final SwidiPositionalOrOptionalOrNamedParameter
        swidiPositionalOrOptionalOrNamedParameter,
  }) =>
      swidiPositionalOrOptionalOrNamedParameter.when(
        fromSwidiPositionalParameter: (val) =>
            SwidiPositionalOrOptionalOrNamedParameter
                .fromSwidiPositionalParameter(
          positionalParameter: SwidiPositionalParameter.clone(
            swidiPositionalParameter: val,
          ),
        ),
        fromSwidiOptionalParameter: (val) =>
            SwidiPositionalOrOptionalOrNamedParameter
                .fromSwidiOptionalParameter(
          optionalParameter: SwidiOptionalParameter.clone(
            swidiOptionalParameter: val,
          ),
        ),
        fromSwidiNamedParameter: (val) =>
            SwidiPositionalOrOptionalOrNamedParameter.fromSwidiNamedParameter(
          namedParameter: SwidiNamedParameter.clone(
            swidiNamedParameter: val,
          ),
        ),
      );

  const factory SwidiPositionalOrOptionalOrNamedParameter.fromSwidiPositionalParameter({
    required final SwidiPositionalParameter positionalParameter,
  }) = _$SwidiPositionalOrOptionalParameterFromSwidiPositionalParameter;

  const factory SwidiPositionalOrOptionalOrNamedParameter.fromSwidiOptionalParameter({
    required final SwidiOptionalParameter optionalParameter,
  }) = _$SwidiPositionalOrOptionalParameterFromSwidiOptionalParameter;

  const factory SwidiPositionalOrOptionalOrNamedParameter.fromSwidiNamedParameter({
    required final SwidiNamedParameter namedParameter,
  }) = _$SwidiPositionalOrOptionalOrNamedParameterFromSwidiNamedParameter;
}
