import 'package:freezed_annotation/freezed_annotation.dart';

part 'swidiConstString.freezed.dart';

@freezed
class SwidiConstString with _$SwidiConstString {
  const factory SwidiConstString({
    required final String value,
  }) = _$SwidiConstStringCtor;

  factory SwidiConstString.clone({
    required final SwidiConstString swidiConstString,
    String? value,
  }) =>
      SwidiConstString(
        value: value ?? swidiConstString.value,
      );
}
