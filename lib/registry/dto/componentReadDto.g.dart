// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'componentReadDto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$ComponentReadDtoCtor _$_$_$ComponentReadDtoCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$ComponentReadDtoCtor(
    id: json['id'] as String,
    projectId: json['projectId'] as String,
    createdAt: json['createdAt'] as int,
    modifiedAt: json['modifiedAt'] as int,
    isPublic: json['isPublic'] as bool,
    name: json['name'] as String,
    description: json['description'] as String,
    deploymentPublishingKey: json['deploymentPublishingKey'] as String,
  );
}

Map<String, dynamic> _$_$_$ComponentReadDtoCtorToJson(
        _$_$ComponentReadDtoCtor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'projectId': instance.projectId,
      'createdAt': instance.createdAt,
      'modifiedAt': instance.modifiedAt,
      'isPublic': instance.isPublic,
      'name': instance.name,
      'description': instance.description,
      'deploymentPublishingKey': instance.deploymentPublishingKey,
    };
