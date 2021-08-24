import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidiConstNumber.freezed.dart';

@freezed
class SwidiConstNumber
    with
        _$SwidiConstNumber,
        HashKeyMixin<SwidiConstNumber>,
        HashComparableMixin<SwidiConstNumber>
    implements
        ICopyable<SwidiConstNumber,
            $SwidiConstNumberCopyWith<SwidiConstNumber>> {
  SwidiConstNumber._();

  factory SwidiConstNumber({
    required String value,
  }) = _$SwidiConstNumberCtor;

  factory SwidiConstNumber._clone({
    required SwidiConstNumber swidiConstNumber,
    String? value,
  }) =>
      SwidiConstNumber(
        value: value ?? swidiConstNumber.value,
      );

  @override
  SwidiConstNumber clone({
    final String? value,
  }) =>
      SwidiConstNumber._clone(
        swidiConstNumber: this,
        value: value,
      );
}
