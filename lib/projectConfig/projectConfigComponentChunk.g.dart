// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projectConfigComponentChunk.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$ProjectConfigComponentChunkCtor
    _$_$_$ProjectConfigComponentChunkCtorFromJson(Map<String, dynamic> json) {
  return _$_$ProjectConfigComponentChunkCtor(
    type: _$enumDecode(_$ProjectConfigComponentChunkTypeEnumMap, json['type']),
    entryPoint: json['entryPoint'] as String,
    baseUrl: json['baseUrl'] as String?,
  );
}

Map<String, dynamic> _$_$_$ProjectConfigComponentChunkCtorToJson(
        _$_$ProjectConfigComponentChunkCtor instance) =>
    <String, dynamic>{
      'type': _$ProjectConfigComponentChunkTypeEnumMap[instance.type],
      'entryPoint': instance.entryPoint,
      'baseUrl': instance.baseUrl,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$ProjectConfigComponentChunkTypeEnumMap = {
  ProjectConfigComponentChunkType.mountable: 'mountable',
};
