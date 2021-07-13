// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getComponentByIdResult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$GetComponentByIdResultSuccess _$_$_$GetComponentByIdResultSuccessFromJson(
    Map<String, dynamic> json) {
  return _$_$GetComponentByIdResultSuccess(
    getComponentByIdSuccessResult: GetComponentByIdSuccessResult.fromJson(
        json['getComponentByIdSuccessResult'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$GetComponentByIdResultSuccessToJson(
        _$_$GetComponentByIdResultSuccess instance) =>
    <String, dynamic>{
      'getComponentByIdSuccessResult': instance.getComponentByIdSuccessResult,
    };

_$_$GetComponentByIdResultFailure _$_$_$GetComponentByIdResultFailureFromJson(
    Map<String, dynamic> json) {
  return _$_$GetComponentByIdResultFailure(
    getComponentByIdFailureResult: GetComponentByIdFailureResult.fromJson(
        json['getComponentByIdFailureResult'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$GetComponentByIdResultFailureToJson(
        _$_$GetComponentByIdResultFailure instance) =>
    <String, dynamic>{
      'getComponentByIdFailureResult': instance.getComponentByIdFailureResult,
    };

_$_$GetComponentByIdSuccessResultCtor
    _$_$_$GetComponentByIdSuccessResultCtorFromJson(Map<String, dynamic> json) {
  return _$_$GetComponentByIdSuccessResultCtor(
    statusCode: json['statusCode'] as int,
    result: ComponentReadDto.fromJson(json['result'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$GetComponentByIdSuccessResultCtorToJson(
        _$_$GetComponentByIdSuccessResultCtor instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'result': instance.result,
    };

_$_$GetComponentByIdFailureResultCtor
    _$_$_$GetComponentByIdFailureResultCtorFromJson(Map<String, dynamic> json) {
  return _$_$GetComponentByIdFailureResultCtor(
    statusCode: json['statusCode'] as int,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$_$_$GetComponentByIdFailureResultCtorToJson(
        _$_$GetComponentByIdFailureResultCtor instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
    };
