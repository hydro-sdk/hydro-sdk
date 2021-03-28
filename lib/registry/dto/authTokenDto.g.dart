// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authTokenDto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$AuthTokenDtoCtor _$_$_$AuthTokenDtoCtorFromJson(Map<String, dynamic> json) {
  return _$_$AuthTokenDtoCtor(
    sub: json['sub'] as String,
    username: json['username'] as String,
    exp: (json['exp'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_$AuthTokenDtoCtorToJson(
        _$_$AuthTokenDtoCtor instance) =>
    <String, dynamic>{
      'sub': instance.sub,
      'username': instance.username,
      'exp': instance.exp,
    };
