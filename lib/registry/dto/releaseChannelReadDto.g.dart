// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'releaseChannelReadDto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$ReleaseChannelReadDtoCtor _$_$_$ReleaseChannelReadDtoCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$ReleaseChannelReadDtoCtor(
    id: json['id'] as String,
    componentId: json['componentId'] as String,
    createdAt: json['createdAt'] as String,
    isPublic: json['isPublic'] as bool,
    name: json['name'] as String,
    description: json['description'] as String,
    currentPackageId: json['currentPackageId'] as String,
  );
}

Map<String, dynamic> _$_$_$ReleaseChannelReadDtoCtorToJson(
        _$_$ReleaseChannelReadDtoCtor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'componentId': instance.componentId,
      'createdAt': instance.createdAt,
      'isPublic': instance.isPublic,
      'name': instance.name,
      'description': instance.description,
      'currentPackageId': instance.currentPackageId,
    };
