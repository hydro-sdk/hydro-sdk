// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swidConfigEmitOptions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$SwidConfigEmitOptionsCtor _$_$_$SwidConfigEmitOptionsCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$SwidConfigEmitOptionsCtor(
    tsEmitOptions: SwidConfigTsEmitOptions.fromJson(
        json['tsEmitOptions'] as Map<String, dynamic>),
    dartEmitOptions: SwidConfigDartEmitOptions.fromJson(
        json['dartEmitOptions'] as Map<String, dynamic>),
    prefixPaths:
        (json['prefixPaths'] as List<dynamic>).map((e) => e as String).toList(),
    allowList:
        SwidConfigAllowList.fromJson(json['allowList'] as Map<String, dynamic>),
    denyList:
        SwidConfigDenyList.fromJson(json['denyList'] as Map<String, dynamic>),
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
