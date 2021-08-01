import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstBooleanFalse.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstBooleanTrue.dart';

part 'swidiConstBoolean.freezed.dart';

@freezed
class SwidiConstBoolean with _$SwidiConstBoolean {
  const SwidiConstBoolean._();

  const factory SwidiConstBoolean.fromSwidiConstBooleanTrue({
    required SwidiConstBooleanTrue swidiConstBooleanTrue,
  }) = _$SwidiConstBooleanFromSwidiConstBooleanTrue;

  const factory SwidiConstBoolean.fromSwidiConstBooleanFalse({
    required SwidiConstBooleanFalse swidiConstBooleanFalse,
  }) = _$SwidiConstBooleanFromSwidiConstBooleanFalse;
}
