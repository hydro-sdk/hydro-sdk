import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'releaseChannelReadDto.freezed.dart';
part 'releaseChannelReadDto.g.dart';

@freezed
abstract class ReleaseChannelReadDto with _$ReleaseChannelReadDto {
  const factory ReleaseChannelReadDto({
    @required String id,
    @required String componentId,
    @required int createdAt,
    @required bool isPublic,
    @required String name,
    @required String description,
    @required String currentPackageId,
  }) = _$ReleaseChannelReadDtoCtor;

  factory ReleaseChannelReadDto.fromJson(Map<String, dynamic> json) =>
      _$ReleaseChannelReadDtoFromJson(json);
}
