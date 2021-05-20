// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projectReadDto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$ProjectReadDtoCtor _$_$_$ProjectReadDtoCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$ProjectReadDtoCtor(
    id: json['id'] as String,
    createdAt: json['createdAt'] as String,
    modifiedAt: json['modifiedAt'] as String,
    isPublic: json['isPublic'] as bool,
    name: json['name'] as String,
    description: json['description'] as String,
    sessionLimit: json['sessionLimit'] as int,
    otaDownloadLimit: json['otaDownloadLimit'] as int,
  );
}

Map<String, dynamic> _$_$_$ProjectReadDtoCtorToJson(
        _$_$ProjectReadDtoCtor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'modifiedAt': instance.modifiedAt,
      'isPublic': instance.isPublic,
      'name': instance.name,
      'description': instance.description,
      'sessionLimit': instance.sessionLimit,
      'otaDownloadLimit': instance.otaDownloadLimit,
    };
