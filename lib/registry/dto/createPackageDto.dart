import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'createPackageDto.freezed.dart';
part 'createPackageDto.g.dart';

@freezed
abstract class CreatePackageDto with _$CreatePackageDto {
  const factory CreatePackageDto({
    @required String publishingPrivateKeySha256,
    @required String otaPackageBase64,
    @required String componentId,
    @required String displayVersion,
    @required String description,
    @required String readmeMd,
    @required String pubspecYaml,
    @required String pubspecLock,
  }) = _$CreatePackageDtoCtor;

  factory CreatePackageDto.fromJson(Map<String, dynamic> json) =>
      _$CreatePackageDtoFromJson(json);
}
