import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'componentReadDto.freezed.dart';
part 'componentReadDto.g.dart';

@freezed
abstract class ComponentReadDto with _$ComponentReadDto {
  const factory ComponentReadDto({
    @required String id,
    @required String projectId,
    @required int createdAt,
    @required int modifiedAt,
    @required bool isPublic,
    @required String name,
    @required String description,
    @required String deploymentPublishingKey,
  }) = _$ComponentReadDtoCtor;

  factory ComponentReadDto.fromJson(Map<String, dynamic> json) =>
      _$ComponentReadDtoFromJson(json);
}
