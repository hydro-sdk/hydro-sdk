// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instantiateGeneric.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$SwidGenericInstantiatorCtor _$_$_$SwidGenericInstantiatorCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$SwidGenericInstantiatorCtor(
    name: json['name'] as String,
    type: json['type'] == null
        ? null
        : SwidType.fromJson(json['type'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$SwidGenericInstantiatorCtorToJson(
        _$_$SwidGenericInstantiatorCtor instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
    };
