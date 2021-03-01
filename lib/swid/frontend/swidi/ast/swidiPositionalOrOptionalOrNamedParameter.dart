import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNamedParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiOptionalParameter.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiPositionalParameter.dart';

part 'swidiPositionalOrOptionalOrNamedParameter.freezed.dart';

@freezed
abstract class SwidiPositionalOrOptionalOrNamedParameter
    with _$SwidiPositionalOrOptionalOrNamedParameter {
  const factory SwidiPositionalOrOptionalOrNamedParameter.fromSwidiPositionalParameter({
    @required SwidiPositionalParameter positionalParameter,
  }) = _$SwidiPositionalOrOptionalParameterFromSwidiPositionalParameter;

  const factory SwidiPositionalOrOptionalOrNamedParameter.fromSwidiOptionalParameter({
    @required SwidiOptionalParameter optionalParameter,
  }) = _$SwidiPositionalOrOptionalParameterFromSwidiOptionalParameter;

  const factory SwidiPositionalOrOptionalOrNamedParameter.fromSwidiNamedParameter({
    @required SwidiNamedParameter namedParameter,
  }) = _$SwidiPositionalOrOptionalOrNamedParameterFromSwidiNamedParameter;
}
