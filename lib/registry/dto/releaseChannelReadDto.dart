import 'package:freezed_annotation/freezed_annotation.dart';

part 'releaseChannelReadDto.freezed.dart';
part 'releaseChannelReadDto.g.dart';

@freezed
class ReleaseChannelReadDto with _$ReleaseChannelReadDto {
  const factory ReleaseChannelReadDto({
    required String id,
    required String componentId,
    required String createdAt,
    required bool isPublic,
    required String name,
    required String description,
    required String currentPackageId,
  }) = _$ReleaseChannelReadDtoCtor;

  factory ReleaseChannelReadDto.fromJson(Map<String, dynamic> json) =>
      _$ReleaseChannelReadDtoFromJson(json);
}
