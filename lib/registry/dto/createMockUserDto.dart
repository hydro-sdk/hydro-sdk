import 'package:freezed_annotation/freezed_annotation.dart';

part 'createMockUserDto.freezed.dart';
part 'createMockUserDto.g.dart';

@freezed
class CreateMockUserDto with _$CreateMockUserDto {
  const factory CreateMockUserDto({
    required String displayName,
    required String email,
    required String password,
  }) = _$CreateMockUserDtoCtor;

  factory CreateMockUserDto.fromJson(Map<String, dynamic> json) =>
      _$CreateMockUserDtoFromJson(json);
}
