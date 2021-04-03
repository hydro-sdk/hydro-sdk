// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'createPackageDto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$CreatePackageDtoCtor _$_$_$CreatePackageDtoCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$CreatePackageDtoCtor(
    publishingPrivateKeySha256: json['publishingPrivateKeySha256'] as String,
    otaPackageBase64: json['otaPackageBase64'] as String,
    componentId: json['componentId'] as String,
    displayVersion: json['displayVersion'] as String,
    description: json['description'] as String,
    readmeMd: json['readmeMd'] as String,
    pubspecYaml: json['pubspecYaml'] as String,
    pubspecLock: json['pubspecLock'] as String,
  );
}

Map<String, dynamic> _$_$_$CreatePackageDtoCtorToJson(
        _$_$CreatePackageDtoCtor instance) =>
    <String, dynamic>{
      'publishingPrivateKeySha256': instance.publishingPrivateKeySha256,
      'otaPackageBase64': instance.otaPackageBase64,
      'componentId': instance.componentId,
      'displayVersion': instance.displayVersion,
      'description': instance.description,
      'readmeMd': instance.readmeMd,
      'pubspecYaml': instance.pubspecYaml,
      'pubspecLock': instance.pubspecLock,
    };
