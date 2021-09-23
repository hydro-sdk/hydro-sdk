// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hashableList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HashableList<T> _$HashableListFromJson<T extends IHashKey>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) {
  return HashableList<T>(
    (json['base'] as List<dynamic>).map(fromJsonT).toList(),
  )
    ..first = fromJsonT(json['first'])
    ..last = fromJsonT(json['last'])
    ..length = json['length'] as int;
}

Map<String, dynamic> _$HashableListToJson<T extends IHashKey>(
  HashableList<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'first': toJsonT(instance.first),
      'last': toJsonT(instance.last),
      'length': instance.length,
      'base': instance.base.map(toJsonT).toList(),
    };
