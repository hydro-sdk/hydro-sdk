import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/registry/dto/authTokenDto.dart';
import 'package:meta/meta.dart';

part 'sessionDto.freezed.dart';
part 'sessionDto.g.dart';

@freezed
abstract class SessionDto with _$SessionDto {
  const factory SessionDto({
    @required AuthTokenDto authenticatedUser,
    @required String authToken,
  }) = _$SessionDtoCtor;

  factory SessionDto.fromJson(Map<String, dynamic> json) =>
      _$SessionDtoFromJson(json);
}
