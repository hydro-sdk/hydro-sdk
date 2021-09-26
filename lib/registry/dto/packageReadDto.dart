import 'package:freezed_annotation/freezed_annotation.dart';

part 'packageReadDto.freezed.dart';
part 'packageReadDto.g.dart';

@freezed
class PackageReadDto with _$PackageReadDto {
  const factory PackageReadDto({
    required String id,
    required String createdAt,
    required String componentId,
    required String sha256,
    required String displayVersion,
    required String description,
    required String deploymentPublicKey,
    required String deploymentPublicKeySha256,
    required String readmeMd,
    required String pubspecYaml,
    required String pubspecLock,
  }) = _$PackageReadDtoCtor;

  factory PackageReadDto.fromJson(Map<String, dynamic> json) =>
      _$PackageReadDtoFromJson(json);
}
