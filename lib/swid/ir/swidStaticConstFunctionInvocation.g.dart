// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swidStaticConstFunctionInvocation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$Data _$_$_$DataFromJson(Map<String, dynamic> json) {
  return _$_$Data(
    value: json['value'] as String,
    staticType: SwidType.fromJson(json['staticType'] as Map<String, dynamic>),
    normalParameters: (json['normalParameters'] as List<dynamic>)
        .map((e) => SwidStaticConst.fromJson(e as Map<String, dynamic>))
        .toList(),
    namedParameters: (json['namedParameters'] as Map<String, dynamic>).map(
      (k, e) =>
          MapEntry(k, SwidStaticConst.fromJson(e as Map<String, dynamic>)),
    ),
    isConstructorInvocation: json['isConstructorInvocation'] as bool,
  );
}

Map<String, dynamic> _$_$_$DataToJson(_$_$Data instance) => <String, dynamic>{
      'value': instance.value,
      'staticType': instance.staticType,
      'normalParameters': instance.normalParameters,
      'namedParameters': instance.namedParameters,
      'isConstructorInvocation': instance.isConstructorInvocation,
    };
