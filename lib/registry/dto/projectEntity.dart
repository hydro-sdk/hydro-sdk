import 'package:freezed_annotation/freezed_annotation.dart';

part 'projectEntity.freezed.dart';
part 'projectEntity.g.dart';

@freezed
class ProjectEntity with _$ProjectEntity {
  const factory ProjectEntity({
    required String id,
    required String createdAt,
    required String modifiedAt,
    required bool isPublic,
    required String name,
    required String description,
    required int sessionLimit,
    required int otaDownloadLimit,
  }) = _$ProjectEntityCtor;

  factory ProjectEntity.fromJson(Map<String, dynamic> json) =>
      _$ProjectEntityFromJson(json);
}
