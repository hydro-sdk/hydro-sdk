// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sessionDto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$SessionDtoCtor _$_$_$SessionDtoCtorFromJson(Map<String, dynamic> json) {
  return _$_$SessionDtoCtor(
    authenticatedUser: json['authenticatedUser'] == null
        ? null
        : AuthTokenDto.fromJson(
            json['authenticatedUser'] as Map<String, dynamic>),
    authToken: json['authToken'] as String,
  );
}

Map<String, dynamic> _$_$_$SessionDtoCtorToJson(_$_$SessionDtoCtor instance) =>
    <String, dynamic>{
      'authenticatedUser': instance.authenticatedUser,
      'authToken': instance.authToken,
    };
