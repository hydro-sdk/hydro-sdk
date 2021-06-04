// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projectConfig.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$ProjectConfigCtor _$_$_$ProjectConfigCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$ProjectConfigCtor(
    project: json['project'] as String,
    components: (json['components'] as List<dynamic>)
        .map((e) => ProjectConfigComponent.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_$ProjectConfigCtorToJson(
        _$_$ProjectConfigCtor instance) =>
    <String, dynamic>{
      'project': instance.project,
      'components': instance.components,
    };
