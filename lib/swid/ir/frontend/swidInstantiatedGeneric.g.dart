// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swidInstantiatedGeneric.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$SwidInstantiatedGenericCtor _$_$_$SwidInstantiatedGenericCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$SwidInstantiatedGenericCtor(
    instantiableGeneric: json['instantiableGeneric'] == null
        ? null
        : SwidInstantiableGeneric.fromJson(
            json['instantiableGeneric'] as Map<String, dynamic>),
    referenceDeclarationKind: _$enumDecodeNullable(
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

const _$SwidReferenceDeclarationKindEnumMap = {
  SwidReferenceDeclarationKind.classElement: 'classElement',
  SwidReferenceDeclarationKind.enumElement: 'enumElement',
  SwidReferenceDeclarationKind.voidType: 'voidType',
  SwidReferenceDeclarationKind.typeParameterType: 'typeParameterType',
  SwidReferenceDeclarationKind.dynamicType: 'dynamicType',
};
