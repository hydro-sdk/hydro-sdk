// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swidConfigEmitOptions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$SwidConfigEmitOptionsCtor _$_$_$SwidConfigEmitOptionsCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$SwidConfigEmitOptionsCtor(
    tsEmitOptions: json['tsEmitOptions'] == null
        ? null
        : SwidConfigTsEmitOptions.fromJson(
            json['tsEmitOptions'] as Map<String, dynamic>),
    dartEmitOptions: json['dartEmitOptions'] == null
        ? null
        : SwidConfigDartEmitOptions.fromJson(
            json['dartEmitOptions'] as Map<String, dynamic>),
    prefixPaths:
        (json['prefixPaths'] as List)?.map((e) => e as String)?.toList(),
    allowList: json['allowList'] == null
        ? null
        : SwidConfigAllowList.fromJson(
            json['allowList'] as Map<String, dynamic>),
    denyList: json['denyList'] == null
        ? null
        : SwidConfigDenyList.fromJson(json['denyList'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$SwidConfigEmitOptionsCtorToJson(
        _$_$SwidConfigEmitOptionsCtor instance) =>
    <String, dynamic>{
      'tsEmitOptions': instance.tsEmitOptions,
      'dartEmitOptions': instance.dartEmitOptions,
      'prefixPaths': instance.prefixPaths,
      'allowList': instance.allowList,
      'denyList': instance.denyList,
    };
