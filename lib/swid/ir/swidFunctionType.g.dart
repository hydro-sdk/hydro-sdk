// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swidFunctionType.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$Data _$_$_$DataFromJson(Map<String, dynamic> json) {
  return _$_$Data(
    name: json['name'] as String,
    nullabilitySuffix:
        _$enumDecode(_$SwidNullabilitySuffixEnumMap, json['nullabilitySuffix']),
    originalPackagePath: json['originalPackagePath'] as String,
    namedParameterTypes:
        (json['namedParameterTypes'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, SwidType.fromJson(e as Map<String, dynamic>)),
    ),
    namedDefaults: (json['namedDefaults'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(
          k, SwidDefaultFormalParameter.fromJson(e as Map<String, dynamic>)),
    ),
    normalParameterNames: (json['normalParameterNames'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    normalParameterTypes: (json['normalParameterTypes'] as List<dynamic>)
        .map((e) => SwidType.fromJson(e as Map<String, dynamic>))
        .toList(),
    optionalParameterNames: (json['optionalParameterNames'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    optionalParameterTypes: (json['optionalParameterTypes'] as List<dynamic>)
        .map((e) => SwidType.fromJson(e as Map<String, dynamic>))
        .toList(),
    returnType: SwidType.fromJson(json['returnType'] as Map<String, dynamic>),
    isFactory: json['isFactory'] as bool,
    typeFormals: (json['typeFormals'] as List<dynamic>)
        .map((e) => SwidTypeFormal.fromJson(e as Map<String, dynamic>))
        .toList(),
    declarationModifiers: SwidDeclarationModifiers.fromJson(
        json['declarationModifiers'] as Map<String, dynamic>),
    element: json['element'] == null
        ? null
        : SwidType.fromJson(json['element'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$DataToJson(_$_$Data instance) => <String, dynamic>{
      'name': instance.name,
      'nullabilitySuffix':
          _$SwidNullabilitySuffixEnumMap[instance.nullabilitySuffix],
      'originalPackagePath': instance.originalPackagePath,
      'namedParameterTypes': instance.namedParameterTypes,
      'namedDefaults': instance.namedDefaults,
      'normalParameterNames': instance.normalParameterNames,
      'normalParameterTypes': instance.normalParameterTypes,
      'optionalParameterNames': instance.optionalParameterNames,
      'optionalParameterTypes': instance.optionalParameterTypes,
      'returnType': instance.returnType,
      'isFactory': instance.isFactory,
      'typeFormals': instance.typeFormals,
      'declarationModifiers': instance.declarationModifiers,
      'element': instance.element,
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

const _$SwidNullabilitySuffixEnumMap = {
  SwidNullabilitySuffix.question: 'question',
  SwidNullabilitySuffix.star: 'star',
  SwidNullabilitySuffix.none: 'none',
};
