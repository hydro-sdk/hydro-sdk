// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swidEnum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$Data _$_$_$DataFromJson(Map<String, dynamic> json) {
  return _$_$Data(
    originalPackagePath: json['originalPackagePath'] as String,
    identifier: json['identifier'] as String,
    children:
        (json['children'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$_$DataToJson(_$_$Data instance) => <String, dynamic>{
      'originalPackagePath': instance.originalPackagePath,
      'identifier': instance.identifier,
      'children': instance.children,
    };
