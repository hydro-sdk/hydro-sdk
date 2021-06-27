// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swidStaticConstBinaryExpression.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$Data _$_$_$DataFromJson(Map<String, dynamic> json) {
  return _$_$Data(
    operator: json['operator'] as String,
    leftOperand:
        SwidStaticConst.fromJson(json['leftOperand'] as Map<String, dynamic>),
    rightOperand:
        SwidStaticConst.fromJson(json['rightOperand'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$DataToJson(_$_$Data instance) => <String, dynamic>{
      'operator': instance.operator,
      'leftOperand': instance.leftOperand,
      'rightOperand': instance.rightOperand,
    };
