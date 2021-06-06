import 'package:freezed_annotation/freezed_annotation.dart';

part 'createPackageDto.freezed.dart';
part 'createPackageDto.g.dart';

@freezed
class CreatePackageDto with _$CreatePackageDto {
  const factory CreatePackageDto({
    required String publishingPrivateKeySha256,
    required String otaPackageBase64,
    required String componentName,
    required String displayVersion,
    required String description,
    required String readmeMd,
    required String pubspecYaml,
    required String pubspecLock,
    @Default("latest") String releaseChannelName,
  }) = _$CreatePackageDtoCtor;

  factory CreatePackageDto.fromJson(Map<String, dynamic> json) =>
      _$CreatePackageDtoFromJson(json);
}
