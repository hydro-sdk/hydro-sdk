import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'userReadDto.freezed.dart';
part 'userReadDto.g.dart';

@freezed
abstract class UserReadDto with _$UserReadDto {
  const factory UserReadDto({
    required String subject,
    required String username,
  }) = _$UserReadDtoCtor;

  factory UserReadDto.fromJson(Map<String, dynamic> json) =>
      _$UserReadDtoFromJson(json);
}
