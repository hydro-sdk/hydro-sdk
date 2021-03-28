// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updatePermissionDto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$UpdatePermissionDtoCtor _$_$_$UpdatePermissionDtoCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$UpdatePermissionDtoCtor(
    manageeId: json['manageeId'] as String,
    managerId: json['managerId'] as String,
    canUpdate: json['canUpdate'] as bool,
    canDelete: json['canDelete'] as bool,
    canAddToCollection: json['canAddToCollection'] as bool,
    canRemoveFromCollection: json['canRemoveFromCollection'] as bool,
  );
}

Map<String, dynamic> _$_$_$UpdatePermissionDtoCtorToJson(
        _$_$UpdatePermissionDtoCtor instance) =>
    <String, dynamic>{
      'manageeId': instance.manageeId,
      'managerId': instance.managerId,
      'canUpdate': instance.canUpdate,
      'canDelete': instance.canDelete,
      'canAddToCollection': instance.canAddToCollection,
      'canRemoveFromCollection': instance.canRemoveFromCollection,
    };
