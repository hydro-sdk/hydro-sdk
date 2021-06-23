import 'package:freezed_annotation/freezed_annotation.dart';

part 'createProjectDto.freezed.dart';
part 'createProjectDto.g.dart';

@freezed
class CreateProjectDto with _$CreateProjectDto {
  const factory CreateProjectDto({
    required String name,
    required String description,
  }) = _$CreateProjectDtoCtor;

  factory CreateProjectDto.fromJson(Map<String, dynamic> json) =>
      _$CreateProjectDtoFromJson(json);
}
