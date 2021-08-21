// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swidStaticConstMapLiteral.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$SwidStaticConstMapLiteralCtor _$_$_$SwidStaticConstMapLiteralCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$SwidStaticConstMapLiteralCtor(
    elements: (json['elements'] as List<dynamic>)
        .map((e) =>
            SwidStaticConstMapLiteralEntry.fromJson(e as Map<String, dynamic>))
        .toList(),
    staticType: SwidType.fromJson(json['staticType'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$SwidStaticConstMapLiteralCtorToJson(
        _$_$SwidStaticConstMapLiteralCtor instance) =>
    <String, dynamic>{
      'elements': instance.elements,
      'staticType': instance.staticType,
    };
