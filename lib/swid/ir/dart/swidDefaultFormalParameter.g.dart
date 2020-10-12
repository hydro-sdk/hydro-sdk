// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swidDefaultFormalParameter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SwidDefaultFormalParameter _$SwidDefaultFormalParameterFromJson(
    Map<String, dynamic> json) {
  return SwidDefaultFormalParameter(
    name: json['name'] as String,
    nullabilitySuffix: _$enumDecodeNullable(
        _$SwidNullabilitySuffixEnumMap, json['nullabilitySuffix']),
    originalPackagePath: json['originalPackagePath'] as String,
    value: json['value'] == null
        ? null
        : SwidType.fromJson(json['value'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SwidDefaultFormalParameterToJson(
        SwidDefaultFormalParameter instance) =>
    <String, dynamic>{
      'name': instance.name,
      'nullabilitySuffix':
          _$SwidNullabilitySuffixEnumMap[instance.nullabilitySuffix],
      'originalPackagePath': instance.originalPackagePath,
      'value': instance.value,
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

const _$SwidNullabilitySuffixEnumMap = {
  SwidNullabilitySuffix.question: 'question',
  SwidNullabilitySuffix.star: 'star',
  SwidNullabilitySuffix.none: 'none',
};
