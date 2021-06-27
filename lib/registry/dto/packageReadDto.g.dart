// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'packageReadDto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$PackageReadDtoCtor _$_$_$PackageReadDtoCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$PackageReadDtoCtor(
    id: json['id'] as String,
    createdAt: json['createdAt'] as String,
    componentId: json['componentId'] as String,
    sha256: json['sha256'] as String,
    displayVersion: json['displayVersion'] as String,
    description: json['description'] as String,
    deploymentPublicKey: json['deploymentPublicKey'] as String,
    deploymentPublicKeySha256: json['deploymentPublicKeySha256'] as String,
    readmeMd: json['readmeMd'] as String,
    pubspecYaml: json['pubspecYaml'] as String,
    pubspecLock: json['pubspecLock'] as String,
  );
}

Map<String, dynamic> _$_$_$PackageReadDtoCtorToJson(
        _$_$PackageReadDtoCtor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'componentId': instance.componentId,
      'sha256': instance.sha256,
      'displayVersion': instance.displayVersion,
      'description': instance.description,
      'deploymentPublicKey': instance.deploymentPublicKey,
      'deploymentPublicKeySha256': instance.deploymentPublicKeySha256,
      'readmeMd': instance.readmeMd,
      'pubspecYaml': instance.pubspecYaml,
      'pubspecLock': instance.pubspecLock,
    };
