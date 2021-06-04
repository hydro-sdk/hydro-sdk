import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'updateUserProjectCreationsDto.freezed.dart';
part 'updateUserProjectCreationsDto.g.dart';

@freezed
abstract class UpdateUserProjectCreationsDto
    with _$UpdateUserProjectCreationsDto {
  const factory UpdateUserProjectCreationsDto({
    required String subject,
    required int numRemainingProjectCreations,
  }) = _$UpdateUserProjectCreationsDtoCtor;

  factory UpdateUserProjectCreationsDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserProjectCreationsDtoFromJson(json);
}
