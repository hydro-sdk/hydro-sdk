import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'updateProjectDto.freezed.dart';
part 'updateProjectDto.g.dart';

@freezed
class UpdateProjectDto with _$UpdateProjectDto {
  const factory UpdateProjectDto({
    required String name,
    required String description,
  }) = _$UpdateProjectDtoCtor;

  factory UpdateProjectDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateProjectDtoFromJson(json);
}
