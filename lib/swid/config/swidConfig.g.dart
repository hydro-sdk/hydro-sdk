// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swidConfig.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$SwidConfigCtor _$_$_$SwidConfigCtorFromJson(Map<String, dynamic> json) {
  return _$_$SwidConfigCtor(
    allowList: json['allowList'] == null
        ? null
        : SwidConfigAllowList.fromJson(
            json['allowList'] as Map<String, dynamic>),
    denyList: json['denyList'] == null
        ? null
        : SwidConfigDenyList.fromJson(json['denyList'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$SwidConfigCtorToJson(_$_$SwidConfigCtor instance) =>
    <String, dynamic>{
      'allowList': instance.allowList,
      'denyList': instance.denyList,
    };
