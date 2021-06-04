import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/registry/dto/authTokenDto.dart';

part 'sessionDto.freezed.dart';
part 'sessionDto.g.dart';

@freezed
abstract class SessionDto with _$SessionDto {
  const factory SessionDto({
    required AuthTokenDto authenticatedUser,
    required String authToken,
  }) = _$SessionDtoCtor;

  factory SessionDto.empty() => SessionDto(
        authenticatedUser: AuthTokenDto.empty(),
        authToken: "",
      );

  factory SessionDto.fromJson(Map<String, dynamic> json) =>
      _$SessionDtoFromJson(json);
}
