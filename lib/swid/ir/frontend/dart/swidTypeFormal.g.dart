// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swidTypeFormal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$Data _$_$_$DataFromJson(Map<String, dynamic> json) {
  return _$_$Data(
    name: json['name'] as String,
    swidReferenceDeclarationKind: _$enumDecodeNullable(
        _$SwidReferenceDeclarationKindEnumMap,
        json['swidReferenceDeclarationKind']),
  );
}

Map<String, dynamic> _$_$_$DataToJson(_$_$Data instance) => <String, dynamic>{
      'name': instance.name,
      'swidReferenceDeclarationKind': _$SwidReferenceDeclarationKindEnumMap[
          instance.swidReferenceDeclarationKind],
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
