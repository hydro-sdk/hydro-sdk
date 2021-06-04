import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'createComponentResponseDto.freezed.dart';
part 'createComponentResponseDto.g.dart';

@freezed
abstract class CreateComponentResponseDto with _$CreateComponentResponseDto {
  const factory CreateComponentResponseDto({
    required String name,
    required String description,
    required String publishingPrivateKey,
  }) = _$CreateComponentResponseDtoCtor;

  factory CreateComponentResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CreateComponentResponseDtoFromJson(json);
}
