import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'swidiConstNumber.freezed.dart';

@freezed
abstract class SwidiConstNumber with _$SwidiConstNumber {
  const factory SwidiConstNumber({
    @required String value,
  }) = _$SwidiConstNumberCtor;
}
