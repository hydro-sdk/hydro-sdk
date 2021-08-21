// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swidStaticConstListLiteral.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$SwidStaticConstListLiteralCtor _$_$_$SwidStaticConstListLiteralCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$SwidStaticConstListLiteralCtor(
    elements: (json['elements'] as List<dynamic>)
        .map((e) => SwidStaticConst.fromJson(e as Map<String, dynamic>))
        .toList(),
    staticType: SwidType.fromJson(json['staticType'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$SwidStaticConstListLiteralCtorToJson(
        _$_$SwidStaticConstListLiteralCtor instance) =>
    <String, dynamic>{
      'elements': instance.elements,
      'staticType': instance.staticType,
    };
