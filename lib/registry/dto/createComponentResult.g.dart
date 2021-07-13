// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'createComponentResult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$CreateComponentResultSuccess _$_$_$CreateComponentResultSuccessFromJson(
    Map<String, dynamic> json) {
  return _$_$CreateComponentResultSuccess(
    createComponentSuccessResult: CreateComponentSuccessResult.fromJson(
        json['createComponentSuccessResult'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$CreateComponentResultSuccessToJson(
        _$_$CreateComponentResultSuccess instance) =>
    <String, dynamic>{
      'createComponentSuccessResult': instance.createComponentSuccessResult,
    };

_$_$CreateComponentResultFailure _$_$_$CreateComponentResultFailureFromJson(
    Map<String, dynamic> json) {
  return _$_$CreateComponentResultFailure(
    createComponentFailureResult: CreateComponentFailureResult.fromJson(
        json['createComponentFailureResult'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$CreateComponentResultFailureToJson(
        _$_$CreateComponentResultFailure instance) =>
    <String, dynamic>{
      'createComponentFailureResult': instance.createComponentFailureResult,
    };

_$_$CreateComponentSuccessResultCtor
    _$_$_$CreateComponentSuccessResultCtorFromJson(Map<String, dynamic> json) {
  return _$_$CreateComponentSuccessResultCtor(
    statusCode: json['statusCode'] as int,
    result: CreateComponentResponseDto.fromJson(
        json['result'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$CreateComponentSuccessResultCtorToJson(
        _$_$CreateComponentSuccessResultCtor instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'result': instance.result,
    };

_$_$CreateComponentFailureResultCtor
    _$_$_$CreateComponentFailureResultCtorFromJson(Map<String, dynamic> json) {
  return _$_$CreateComponentFailureResultCtor(
    statusCode: json['statusCode'] as int,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$_$_$CreateComponentFailureResultCtorToJson(
        _$_$CreateComponentFailureResultCtor instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
    };
