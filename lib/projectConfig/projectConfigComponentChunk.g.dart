// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projectConfigComponentChunk.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$ProjectConfigComponentChunkCtor
    _$_$_$ProjectConfigComponentChunkCtorFromJson(Map<String, dynamic> json) {
  return _$_$ProjectConfigComponentChunkCtor(
    type: _$enumDecodeNullable(
        _$ProjectConfigComponentChunkTypeEnumMap, json['type']),
    entryPoint: json['entryPoint'] as String,
    baseUrl: json['baseUrl'] as String,
  );
}

Map<String, dynamic> _$_$_$ProjectConfigComponentChunkCtorToJson(
        _$_$ProjectConfigComponentChunkCtor instance) =>
    <String, dynamic>{
      'type': _$ProjectConfigComponentChunkTypeEnumMap[instance.type],
      'entryPoint': instance.entryPoint,
      'baseUrl': instance.baseUrl,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$ProjectConfigComponentChunkTypeEnumMap = {
  ProjectConfigComponentChunkType.mountable: 'mountable',
};
