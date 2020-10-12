// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swidStaticConstFunctionInvocation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SwidStaticConstFunctionInvocation _$SwidStaticConstFunctionInvocationFromJson(
    Map<String, dynamic> json) {
  return SwidStaticConstFunctionInvocation(
    value: json['value'] as String,
    normalParameters: (json['normalParameters'] as List)
        ?.map((e) =>
            e == null ? null : SwidLiteral.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    namedParameters: (json['namedParameters'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k,
          e == null ? null : SwidLiteral.fromJson(e as Map<String, dynamic>)),
    ),
    isConstructorInvocation: json['isConstructorInvocation'] as bool,
  );
}

Map<String, dynamic> _$SwidStaticConstFunctionInvocationToJson(
        SwidStaticConstFunctionInvocation instance) =>
    <String, dynamic>{
      'value': instance.value,
      'normalParameters': instance.normalParameters,
      'namedParameters': instance.namedParameters,
      'isConstructorInvocation': instance.isConstructorInvocation,
    };
