// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swidClass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SwidClass _$SwidClassFromJson(Map<String, dynamic> json) {
  return SwidClass(
    name: json['name'] as String,
    nullabilitySuffix: _$enumDecodeNullable(
        _$SwidNullabilitySuffixEnumMap, json['nullabilitySuffix']),
    originalPackagePath: json['originalPackagePath'] as String,
    constructorType: json['constructorType'] == null
        ? null
        : SwidFunctionType.fromJson(
            json['constructorType'] as Map<String, dynamic>),
    methods: (json['methods'] as List)
        ?.map((e) => e == null
            ? null
            : SwidFunctionType.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SwidClassToJson(SwidClass instance) => <String, dynamic>{
      'name': instance.name,
      'nullabilitySuffix':
          _$SwidNullabilitySuffixEnumMap[instance.nullabilitySuffix],
      'originalPackagePath': instance.originalPackagePath,
      'constructorType': instance.constructorType,
      'methods': instance.methods,
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
