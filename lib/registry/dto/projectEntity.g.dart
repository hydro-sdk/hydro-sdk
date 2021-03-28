// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projectEntity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$ProjectEntityCtor _$_$_$ProjectEntityCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$ProjectEntityCtor(
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

Map<String, dynamic> _$_$_$ProjectEntityCtorToJson(
        _$_$ProjectEntityCtor instance) =>
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
