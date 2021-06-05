import 'package:freezed_annotation/freezed_annotation.dart';


part 'loginUserDto.freezed.dart';
part 'loginUserDto.g.dart';

@freezed
class LoginUserDto with _$LoginUserDto {
  const factory LoginUserDto({
    required String username,
    required String password,
  }) = _$LoginUserDtoCtor;

  factory LoginUserDto.fromJson(Map<String, dynamic> json) =>
      _$LoginUserDtoFromJson(json);
}
