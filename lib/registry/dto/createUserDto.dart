import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'createUserDto.freezed.dart';
part 'createUserDto.g.dart';

@freezed
class CreateUserDto with _$CreateUserDto {
  const factory CreateUserDto({
    required String username,
    required String password,
  }) = _$CreateUserDtoCtor;

  factory CreateUserDto.fromJson(Map<String, dynamic> json) =>
      _$CreateUserDtoFromJson(json);
}
