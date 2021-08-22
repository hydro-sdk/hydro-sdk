import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiOptionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiPositionalParameter.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'swidiPositionalOrOptionalOrNamedParameter.freezed.dart';

@freezed
class SwidiPositionalOrOptionalOrNamedParameter
    with
        _$SwidiPositionalOrOptionalOrNamedParameter,
        HashKeyMixin<SwidiPositionalOrOptionalOrNamedParameter>,
        HashComparableMixin<SwidiPositionalOrOptionalOrNamedParameter> {
  SwidiPositionalOrOptionalOrNamedParameter._();

  factory SwidiPositionalOrOptionalOrNamedParameter._clone({
    required final SwidiPositionalOrOptionalOrNamedParameter
        swidiPositionalOrOptionalOrNamedParameter,
  }) =>
      swidiPositionalOrOptionalOrNamedParameter.when(
        fromSwidiPositionalParameter: (val) =>
            SwidiPositionalOrOptionalOrNamedParameter
                .fromSwidiPositionalParameter(
          positionalParameter: val.clone(),
        ),
        fromSwidiOptionalParameter: (val) =>
            SwidiPositionalOrOptionalOrNamedParameter
                .fromSwidiOptionalParameter(
          optionalParameter: val.clone(),
        ),
        fromSwidiNamedParameter: (val) =>
            SwidiPositionalOrOptionalOrNamedParameter.fromSwidiNamedParameter(
          namedParameter: val.clone(),
        ),
      );

  factory SwidiPositionalOrOptionalOrNamedParameter.fromSwidiPositionalParameter({
    required final SwidiPositionalParameter positionalParameter,
  }) = _$SwidiPositionalOrOptionalParameterFromSwidiPositionalParameter;

  factory SwidiPositionalOrOptionalOrNamedParameter.fromSwidiOptionalParameter({
    required final SwidiOptionalParameter optionalParameter,
  }) = _$SwidiPositionalOrOptionalParameterFromSwidiOptionalParameter;

  factory SwidiPositionalOrOptionalOrNamedParameter.fromSwidiNamedParameter({
    required final SwidiNamedParameter namedParameter,
  }) = _$SwidiPositionalOrOptionalOrNamedParameterFromSwidiNamedParameter;

  @override
  SwidiPositionalOrOptionalOrNamedParameter clone() =>
      SwidiPositionalOrOptionalOrNamedParameter._clone(
        swidiPositionalOrOptionalOrNamedParameter: this,
      );
}
