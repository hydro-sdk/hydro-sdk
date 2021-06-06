import 'package:freezed_annotation/freezed_annotation.dart';

part 'projectCreationsReadDto.freezed.dart';
part 'projectCreationsReadDto.g.dart';

@freezed
class ProjectCreationsReadDto with _$ProjectCreationsReadDto {
  const factory ProjectCreationsReadDto({
    required int remainingProjectCreations,
  }) = _$ProjectCreationsReadDtoCtpr;

  factory ProjectCreationsReadDto.fromJson(Map<String, dynamic> json) =>
      _$ProjectCreationsReadDtoFromJson(json);
}
