import 'package:freezed_annotation/freezed_annotation.dart';

part 'projectReadDto.freezed.dart';
part 'projectReadDto.g.dart';

@freezed
class ProjectReadDto with _$ProjectReadDto {
  const factory ProjectReadDto({
    required String id,
    required String createdAt,
    required String modifiedAt,
    required bool isPublic,
    required String name,
    required String description,
    required int sessionLimit,
    required int otaDownloadLimit,
  }) = _$ProjectReadDtoCtor;

  factory ProjectReadDto.fromJson(Map<String, dynamic> json) =>
      _$ProjectReadDtoFromJson(json);
}
