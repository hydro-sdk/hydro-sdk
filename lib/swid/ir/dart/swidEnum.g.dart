// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swidEnum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SwidEnum _$SwidEnumFromJson(Map<String, dynamic> json) {
  return SwidEnum(
    originalPackagePath: json['originalPackagePath'] as String,
    identifier: json['identifier'] as String,
    children: (json['children'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$SwidEnumToJson(SwidEnum instance) => <String, dynamic>{
      'originalPackagePath': instance.originalPackagePath,
      'identifier': instance.identifier,
      'children': instance.children,
    };
