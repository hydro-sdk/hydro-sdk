// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swidClass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$Data _$_$_$DataFromJson(Map<String, dynamic> json) {
  return _$_$Data(
    name: json['name'] as String,
    nullabilitySuffix: _$enumDecodeNullable(
        _$SwidNullabilitySuffixEnumMap, json['nullabilitySuffix']),
    originalPackagePath: json['originalPackagePath'] as String,
    constructorType: json['constructorType'] == null
        ? null
        : SwidFunctionType.fromJson(
            json['constructorType'] as Map<String, dynamic>),
    factoryConstructors: (json['factoryConstructors'] as List)
        ?.map((e) => e == null
            ? null
            : SwidFunctionType.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    staticMethods: (json['staticMethods'] as List)
        ?.map((e) => e == null
            ? null
            : SwidFunctionType.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    methods: (json['methods'] as List)
        ?.map((e) => e == null
            ? null
            : SwidFunctionType.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    staticConstFieldDeclarations: (json['staticConstFieldDeclarations'] as List)
        ?.map((e) => e == null
            ? null
            : SwidStaticConstFieldDeclaration.fromJson(
                e as Map<String, dynamic>))
        ?.toList(),
    instanceFieldDeclarations:
        (json['instanceFieldDeclarations'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k, e == null ? null : SwidType.fromJson(e as Map<String, dynamic>)),
    ),
    swidDeclarationModifiers: json['swidDeclarationModifiers'] == null
        ? null
        : SwidDeclarationModifiers.fromJson(
            json['swidDeclarationModifiers'] as Map<String, dynamic>),
    mixedInClasses: (json['mixedInClasses'] as List)
        ?.map((e) =>
            e == null ? null : SwidClass.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_$DataToJson(_$_$Data instance) => <String, dynamic>{
      'name': instance.name,
      'nullabilitySuffix':
          _$SwidNullabilitySuffixEnumMap[instance.nullabilitySuffix],
      'originalPackagePath': instance.originalPackagePath,
      'constructorType': instance.constructorType,
      'factoryConstructors': instance.factoryConstructors,
      'staticMethods': instance.staticMethods,
      'methods': instance.methods,
      'staticConstFieldDeclarations': instance.staticConstFieldDeclarations,
      'instanceFieldDeclarations': instance.instanceFieldDeclarations,
      'swidDeclarationModifiers': instance.swidDeclarationModifiers,
      'mixedInClasses': instance.mixedInClasses,
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
