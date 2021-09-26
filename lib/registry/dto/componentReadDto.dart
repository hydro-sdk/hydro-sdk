import 'package:freezed_annotation/freezed_annotation.dart';

part 'componentReadDto.freezed.dart';
part 'componentReadDto.g.dart';

@freezed
class ComponentReadDto with _$ComponentReadDto {
  const factory ComponentReadDto({
    required String id,
    required String projectId,
    required String createdAt,
    required String modifiedAt,
    required bool isPublic,
    required String name,
    required String description,
  }) = _$ComponentReadDtoCtor;

  factory ComponentReadDto.fromJson(Map<String, dynamic> json) =>
      _$ComponentReadDtoFromJson(json);
}
