import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';

part 'swidiConstBooleanFalse.freezed.dart';

@freezed
class SwidiConstBooleanFalse
    with
        _$SwidiConstBooleanFalse,
        HashKeyMixin<SwidiConstBooleanFalse>,
        HashComparableMixin<SwidiConstBooleanFalse> {
  SwidiConstBooleanFalse._();

  factory SwidiConstBooleanFalse() = _$SwidiConstBooleanFalseCtor;

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield [0];
  }

  @override
  SwidiConstBooleanFalse clone() => SwidiConstBooleanFalse();
}
