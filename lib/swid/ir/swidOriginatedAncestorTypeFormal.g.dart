// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swidOriginatedAncestorTypeFormal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$SwidOriginatedAncestorTypeFormalCtor
    _$_$_$SwidOriginatedAncestorTypeFormalCtorFromJson(
        Map<String, dynamic> json) {
  return _$_$SwidOriginatedAncestorTypeFormalCtor(
    swidTypeFormal:
        SwidTypeFormal.fromJson(json['swidTypeFormal'] as Map<String, dynamic>),
    kind: _$enumDecode(
        _$SwidOriginatedAncestorTypeFormalKindEnumMap, json['kind']),
  );
}

Map<String, dynamic> _$_$_$SwidOriginatedAncestorTypeFormalCtorToJson(
        _$_$SwidOriginatedAncestorTypeFormalCtor instance) =>
    <String, dynamic>{
      'swidTypeFormal': instance.swidTypeFormal,
      'kind': _$SwidOriginatedAncestorTypeFormalKindEnumMap[instance.kind],
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

const _$SwidOriginatedAncestorTypeFormalKindEnumMap = {
  SwidOriginatedAncestorTypeFormalKind.kClass: 'kClass',
  SwidOriginatedAncestorTypeFormalKind.kMethod: 'kMethod',
};
