import 'package:freezed_annotation/freezed_annotation.dart';

part 'createComponentDto.freezed.dart';
part 'createComponentDto.g.dart';

@freezed
class CreateComponentDto with _$CreateComponentDto {
  const factory CreateComponentDto({
    required String name,
    required String description,
    required String projectId,
  }) = _$CreateComponentDtoCtor;

  factory CreateComponentDto.fromJson(Map<String, dynamic> json) =>
      _$CreateComponentDtoFromJson(json);
}
