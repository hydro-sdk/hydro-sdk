// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swidTypeArgumentType.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$SwidTypeArgumentTypeCtor _$_$_$SwidTypeArgumentTypeCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$SwidTypeArgumentTypeCtor(
    type: SwidType.fromJson(json['type'] as Map<String, dynamic>),
    element: json['element'] == null
        ? null
        : SwidElement.fromJson(json['element'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$SwidTypeArgumentTypeCtorToJson(
        _$_$SwidTypeArgumentTypeCtor instance) =>
    <String, dynamic>{
      'type': instance.type,
      'element': instance.element,
    };
