import 'package:freezed_annotation/freezed_annotation.dart';


part 'authTokenDto.freezed.dart';
part 'authTokenDto.g.dart';

@freezed
class AuthTokenDto with _$AuthTokenDto {
  const factory AuthTokenDto({
    required String sub,
    required String username,
    required int exp,
  }) = _$AuthTokenDtoCtor;

  factory AuthTokenDto.empty() => const AuthTokenDto(
        sub: "",
        username: "",
        exp: 0,
      );

  factory AuthTokenDto.fromJson(Map<String, dynamic> json) =>
      _$AuthTokenDtoFromJson(json);
}
