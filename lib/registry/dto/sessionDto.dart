import 'package:freezed_annotation/freezed_annotation.dart';

part 'sessionDto.freezed.dart';
part 'sessionDto.g.dart';

@freezed
class SessionDto with _$SessionDto {
  const factory SessionDto({
    required String authToken,
  }) = _$SessionDtoCtor;

  factory SessionDto.empty() => const SessionDto(
        authToken: "",
      );

  factory SessionDto.fromJson(Map<String, dynamic> json) =>
      _$SessionDtoFromJson(json);
}
