// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projectConfigComponent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$ProjectConfigComponentCtor _$_$_$ProjectConfigComponentCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$ProjectConfigComponentCtor(
    name: json['name'] as String,
    chunks: (json['chunks'] as List<dynamic>)
        .map((e) =>
            ProjectConfigComponentChunk.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_$ProjectConfigComponentCtorToJson(
        _$_$ProjectConfigComponentCtor instance) =>
    <String, dynamic>{
      'name': instance.name,
      'chunks': instance.chunks,
    };
