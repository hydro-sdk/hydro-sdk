// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swidStaticConstFieldDeclaration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SwidStaticConstFieldDeclaration _$SwidStaticConstFieldDeclarationFromJson(
    Map<String, dynamic> json) {
  return SwidStaticConstFieldDeclaration(
    name: json['name'] as String,
    value: json['value'] == null
        ? null
        : SwidLiteral.fromJson(json['value'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SwidStaticConstFieldDeclarationToJson(
        SwidStaticConstFieldDeclaration instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };
