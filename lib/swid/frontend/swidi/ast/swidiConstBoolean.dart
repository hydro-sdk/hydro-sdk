import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstBooleanFalse.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConstBooleanTrue.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'swidiConstBoolean.freezed.dart';

@freezed
class SwidiConstBoolean
    with
        _$SwidiConstBoolean,
        HashKeyMixin<SwidiConstBoolean>,
        HashComparableMixin<SwidiConstBoolean> {
  SwidiConstBoolean._();

  factory SwidiConstBoolean.fromSwidiConstBooleanTrue({
    required final SwidiConstBooleanTrue swidiConstBooleanTrue,
  }) = _$SwidiConstBooleanFromSwidiConstBooleanTrue;

  factory SwidiConstBoolean.fromSwidiConstBooleanFalse({
    required final SwidiConstBooleanFalse swidiConstBooleanFalse,
  }) = _$SwidiConstBooleanFromSwidiConstBooleanFalse;

  @override
  Iterable<Iterable<int>> get hashableParts => when(
        fromSwidiConstBooleanTrue: (val) => val.hashKey.hashableParts,
        fromSwidiConstBooleanFalse: (val) => val.hashKey.hashableParts,
      );

  @override
  SwidiConstBoolean clone() => when(
        fromSwidiConstBooleanTrue: (val) =>
            SwidiConstBoolean.fromSwidiConstBooleanTrue(
          swidiConstBooleanTrue: val.clone(),
        ),
        fromSwidiConstBooleanFalse: (val) =>
            SwidiConstBoolean.fromSwidiConstBooleanFalse(
          swidiConstBooleanFalse: val.clone(),
        ),
      );
}
