// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swidClass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$Data _$_$_$DataFromJson(Map<String, dynamic> json) {
  return _$_$Data(
    name: json['name'] as String,
    nullabilitySuffix:
        _$enumDecode(_$SwidNullabilitySuffixEnumMap, json['nullabilitySuffix']),
    originalPackagePath: json['originalPackagePath'] as String,
    constructorType: json['constructorType'] == null
        ? null
        : SwidFunctionType.fromJson(
            json['constructorType'] as Map<String, dynamic>),
    generativeConstructors: (json['generativeConstructors'] as List<dynamic>)
        .map((e) => SwidFunctionType.fromJson(e as Map<String, dynamic>))
        .toList(),
    factoryConstructors: (json['factoryConstructors'] as List<dynamic>)
        .map((e) => SwidFunctionType.fromJson(e as Map<String, dynamic>))
        .toList(),
    staticMethods: (json['staticMethods'] as List<dynamic>)
        .map((e) => SwidFunctionType.fromJson(e as Map<String, dynamic>))
        .toList(),
    methods: (json['methods'] as List<dynamic>)
        .map((e) => SwidFunctionType.fromJson(e as Map<String, dynamic>))
        .toList(),
    staticConstFieldDeclarations: (json['staticConstFieldDeclarations']
            as List<dynamic>)
        .map((e) =>
            SwidStaticConstFieldDeclaration.fromJson(e as Map<String, dynamic>))
        .toList(),
    instanceFieldDeclarations:
        (json['instanceFieldDeclarations'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, SwidType.fromJson(e as Map<String, dynamic>)),
    ),
    declarationModifiers: SwidDeclarationModifiers.fromJson(
        json['declarationModifiers'] as Map<String, dynamic>),
    mixedInClasses: (json['mixedInClasses'] as List<dynamic>)
        .map((e) => SwidClass.fromJson(e as Map<String, dynamic>))
        .toList(),
    implementedClasses: (json['implementedClasses'] as List<dynamic>)
        .map((e) => SwidClass.fromJson(e as Map<String, dynamic>))
        .toList(),
    isMixin: json['isMixin'] as bool,
    typeFormals: (json['typeFormals'] as List<dynamic>)
        .map((e) => SwidTypeFormal.fromJson(e as Map<String, dynamic>))
        .toList(),
    element: json['element'] == null
        ? null
        : SwidType.fromJson(json['element'] as Map<String, dynamic>),
    extendedClass: json['extendedClass'] == null
        ? null
        : SwidClass.fromJson(json['extendedClass'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$DataToJson(_$_$Data instance) => <String, dynamic>{
      'name': instance.name,
      'nullabilitySuffix':
          _$SwidNullabilitySuffixEnumMap[instance.nullabilitySuffix],
      'originalPackagePath': instance.originalPackagePath,
      'constructorType': instance.constructorType,
      'generativeConstructors': instance.generativeConstructors,
      'factoryConstructors': instance.factoryConstructors,
      'staticMethods': instance.staticMethods,
      'methods': instance.methods,
      'staticConstFieldDeclarations': instance.staticConstFieldDeclarations,
      'instanceFieldDeclarations': instance.instanceFieldDeclarations,
      'declarationModifiers': instance.declarationModifiers,
      'mixedInClasses': instance.mixedInClasses,
      'implementedClasses': instance.implementedClasses,
      'isMixin': instance.isMixin,
      'typeFormals': instance.typeFormals,
      'element': instance.element,
      'extendedClass': instance.extendedClass,
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
