// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tsFunctionInvocation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$Data _$_$_$DataFromJson(Map<String, dynamic> json) {
  return _$_$Data(
    functionReference: json['functionReference'] as String,
    tsFunctionInvocationPositionalParameters:
        TsFunctionInvocationPositionalParameters.fromJson(
            json['tsFunctionInvocationPositionalParameters']
                as Map<String, dynamic>),
    tsFunctionInvocationNamedParameters:
        (json['tsFunctionInvocationNamedParameters'] as List<dynamic>)
            .map((e) => TsFunctionInvocationNamedParameters.fromJson(
                e as Map<String, dynamic>))
            .toList(),
  );
}

Map<String, dynamic> _$_$_$DataToJson(_$_$Data instance) => <String, dynamic>{
      'functionReference': instance.functionReference,
      'tsFunctionInvocationPositionalParameters':
          instance.tsFunctionInvocationPositionalParameters,
      'tsFunctionInvocationNamedParameters':
          instance.tsFunctionInvocationNamedParameters,
    };
