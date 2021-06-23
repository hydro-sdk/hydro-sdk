// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swidInstantiatedGeneric.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$SwidInstantiatedGenericCtor _$_$_$SwidInstantiatedGenericCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$SwidInstantiatedGenericCtor(
    instantiableGeneric: SwidInstantiableGeneric.fromJson(
        json['instantiableGeneric'] as Map<String, dynamic>),
    referenceDeclarationKind: _$enumDecode(
        _$SwidReferenceDeclarationKindEnumMap,
        json['referenceDeclarationKind']),
  );
}

Map<String, dynamic> _$_$_$SwidInstantiatedGenericCtorToJson(
        _$_$SwidInstantiatedGenericCtor instance) =>
    <String, dynamic>{
      'instantiableGeneric': instance.instantiableGeneric,
      'referenceDeclarationKind': _$SwidReferenceDeclarationKindEnumMap[
          instance.referenceDeclarationKind],
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

const _$SwidReferenceDeclarationKindEnumMap = {
  SwidReferenceDeclarationKind.classElement: 'classElement',
  SwidReferenceDeclarationKind.enumElement: 'enumElement',
  SwidReferenceDeclarationKind.voidType: 'voidType',
  SwidReferenceDeclarationKind.typeParameterType: 'typeParameterType',
  SwidReferenceDeclarationKind.dynamicType: 'dynamicType',
  SwidReferenceDeclarationKind.unknown: 'unknown',
};
