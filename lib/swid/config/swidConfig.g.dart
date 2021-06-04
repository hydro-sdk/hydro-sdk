// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swidConfig.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$SwidConfigCtor _$_$_$SwidConfigCtorFromJson(Map<String, dynamic> json) {
  return _$_$SwidConfigCtor(
    inputPackagePath: json['inputPackagePath'] as String,
    interfaces:
        (json['interfaces'] as List<dynamic>).map((e) => e as String).toList(),
    emitOptions: SwidConfigEmitOptions.fromJson(
        json['emitOptions'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$SwidConfigCtorToJson(_$_$SwidConfigCtor instance) =>
    <String, dynamic>{
      'inputPackagePath': instance.inputPackagePath,
      'interfaces': instance.interfaces,
      'emitOptions': instance.emitOptions,
    };
