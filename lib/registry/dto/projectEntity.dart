import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'projectEntity.freezed.dart';
part 'projectEntity.g.dart';

@freezed
abstract class ProjectEntity with _$ProjectEntity {
  const factory ProjectEntity({
    @required String id,
    @required int createdAt,
    @required int modfiedAt,
    @required bool isPublic,
    @required String name,
    @required String description,
    @required int sessionLimit,
    @required int otaDownloadLimit,
  }) = _$ProjectEntityCtor;

  factory ProjectEntity.fromJson(Map<String, dynamic> json) =>
      _$ProjectEntityFromJson(json);
}
