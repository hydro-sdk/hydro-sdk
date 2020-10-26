// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swidStaticConstFunctionInvocation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$Data _$_$_$DataFromJson(Map<String, dynamic> json) {
  return _$_$Data(
    value: json['value'] as String,
    normalParameters: (json['normalParameters'] as List)
        ?.map((e) => e == null
            ? null
            : SwidStaticConst.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    namedParameters: (json['namedParameters'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : SwidStaticConst.fromJson(e as Map<String, dynamic>)),
    ),
    isConstructorInvocation: json['isConstructorInvocation'] as bool,
  );
}

Map<String, dynamic> _$_$_$DataToJson(_$_$Data instance) => <String, dynamic>{
      'value': instance.value,
      'normalParameters': instance.normalParameters,
      'namedParameters': instance.namedParameters,
      'isConstructorInvocation': instance.isConstructorInvocation,
    };
