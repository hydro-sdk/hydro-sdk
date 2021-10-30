// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swidTypeFormal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$Data _$_$_$DataFromJson(Map<String, dynamic> json) {
  return _$_$Data(
    value: SwidTypeFormalValue.fromJson(json['value'] as Map<String, dynamic>),
    swidReferenceDeclarationKind: _$enumDecode(
        _$SwidReferenceDeclarationKindEnumMap,
        json['swidReferenceDeclarationKind']),
    swidTypeFormalBound: json['swidTypeFormalBound'] == null
        ? null
        : SwidTypeFormalBound.fromJson(
            json['swidTypeFormalBound'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$DataToJson(_$_$Data instance) => <String, dynamic>{
      'value': instance.value,
      'swidReferenceDeclarationKind': _$SwidReferenceDeclarationKindEnumMap[
          instance.swidReferenceDeclarationKind],
      'swidTypeFormalBound': instance.swidTypeFormalBound,
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
