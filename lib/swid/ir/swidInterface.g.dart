// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swidInterface.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$Data _$_$_$DataFromJson(Map<String, dynamic> json) {
  return _$_$Data(
    name: json['name'] as String,
    nullabilitySuffix:
        _$enumDecode(_$SwidNullabilitySuffixEnumMap, json['nullabilitySuffix']),
    originalPackagePath: json['originalPackagePath'] as String,
    typeArguments: (json['typeArguments'] as List<dynamic>)
        .map((e) => SwidTypeArgumentType.fromJson(e as Map<String, dynamic>))
        .toList(),
    referenceDeclarationKind: _$enumDecode(
        _$SwidReferenceDeclarationKindEnumMap,
        json['referenceDeclarationKind']),
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
      'typeArguments': instance.typeArguments,
      'referenceDeclarationKind': _$SwidReferenceDeclarationKindEnumMap[
          instance.referenceDeclarationKind],
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

const _$SwidReferenceDeclarationKindEnumMap = {
  SwidReferenceDeclarationKind.classElement: 'classElement',
  SwidReferenceDeclarationKind.enumElement: 'enumElement',
  SwidReferenceDeclarationKind.voidType: 'voidType',
  SwidReferenceDeclarationKind.typeParameterType: 'typeParameterType',
  SwidReferenceDeclarationKind.dynamicType: 'dynamicType',
  SwidReferenceDeclarationKind.unknown: 'unknown',
};
