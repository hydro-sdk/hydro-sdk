import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidiConstString.freezed.dart';

@freezed
class SwidiConstString
    with
        _$SwidiConstString,
        HashKeyMixin<SwidiConstString>,
        HashComparableMixin<SwidiConstString>
    implements
        ICopyable<SwidiConstString,
            $SwidiConstStringCopyWith<SwidiConstString>> {
  SwidiConstString._();

  factory SwidiConstString({
    required final String value,
  }) = _$SwidiConstStringCtor;

  factory SwidiConstString._clone({
    required final SwidiConstString swidiConstString,
    String? value,
  }) =>
      SwidiConstString(
        value: value ?? swidiConstString.value,
      );

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* value.hashableParts;
  }

  @override
  SwidiConstString clone({
    final String? value,
  }) =>
      SwidiConstString._clone(
        swidiConstString: this,
        value: value,
      );
}
