// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'createMockUserResult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$CreateMockUserResultSuccess _$_$_$CreateMockUserResultSuccessFromJson(
    Map<String, dynamic> json) {
  return _$_$CreateMockUserResultSuccess(
    createMockUserSuccessResult: CreateMockUserSuccessResult.fromJson(
        json['createMockUserSuccessResult'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$CreateMockUserResultSuccessToJson(
        _$_$CreateMockUserResultSuccess instance) =>
    <String, dynamic>{
      'createMockUserSuccessResult': instance.createMockUserSuccessResult,
    };

_$_$CreateMockUserResultFailure _$_$_$CreateMockUserResultFailureFromJson(
    Map<String, dynamic> json) {
  return _$_$CreateMockUserResultFailure(
    createMockUserFailureResult: CreateMockUserFailureResult.fromJson(
        json['createMockUserFailureResult'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$CreateMockUserResultFailureToJson(
        _$_$CreateMockUserResultFailure instance) =>
    <String, dynamic>{
      'createMockUserFailureResult': instance.createMockUserFailureResult,
    };

_$_$CreateMockUserSuccessResultCtor
    _$_$_$CreateMockUserSuccessResultCtorFromJson(Map<String, dynamic> json) {
  return _$_$CreateMockUserSuccessResultCtor(
    statusCode: json['statusCode'] as int,
    result: json['result'] as String,
  );
}

Map<String, dynamic> _$_$_$CreateMockUserSuccessResultCtorToJson(
        _$_$CreateMockUserSuccessResultCtor instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'result': instance.result,
    };

_$_$CreateMockUserFailureResultCtor
    _$_$_$CreateMockUserFailureResultCtorFromJson(Map<String, dynamic> json) {
  return _$_$CreateMockUserFailureResultCtor(
    statusCode: json['statusCode'] as int,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$_$_$CreateMockUserFailureResultCtorToJson(
        _$_$CreateMockUserFailureResultCtor instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
    };
