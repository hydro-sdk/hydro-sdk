import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiOptionalParameter.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidi/ast/swidiPositionalParameter.dart';
import 'package:meta/meta.dart';

part 'swidiPositionalOrOptionalParameter.freezed.dart';

@freezed
abstract class SwidiPositionalOrOptionalParameter
    with _$SwidiPositionalOrOptionalParameter {
  const factory SwidiPositionalOrOptionalParameter.fromSwidiPositionalParameter({
    @required SwidiPositionalParameter positionalParameter,
  }) = _$SwidiPositionalOrOptionalParameterFromSwidiPositionalParameter;

  const factory SwidiPositionalOrOptionalParameter.fromSwidiOptionalParameter({
    @required SwidiOptionalParameter optionalParameter,
  }) = _$SwidiPositionalOrOptionalParameterFromSwidiOptionalParameter;
}

