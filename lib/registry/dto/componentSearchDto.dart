import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'componentSearchDto.freezed.dart';
part 'componentSearchDto.g.dart';

@freezed
abstract class ComponentSearchDto with _$ComponentSearchDto {
  const factory ComponentSearchDto({
    required String id,
    required String projectName,
    required String name,
    required String description,
  }) = _$ComponentSearchDtoCtor;

  factory ComponentSearchDto.fromJson(Map<String, dynamic> json) =>
      _$ComponentSearchDtoFromJson(json);
}
