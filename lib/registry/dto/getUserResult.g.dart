// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getUserResult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$GetUserResultSuccess _$_$_$GetUserResultSuccessFromJson(
    Map<String, dynamic> json) {
  return _$_$GetUserResultSuccess(
    getUserSuccessResult: GetUserSuccessResult.fromJson(
        json['getUserSuccessResult'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$GetUserResultSuccessToJson(
        _$_$GetUserResultSuccess instance) =>
    <String, dynamic>{
      'getUserSuccessResult': instance.getUserSuccessResult,
    };

_$_$GetUserResultFailure _$_$_$GetUserResultFailureFromJson(
    Map<String, dynamic> json) {
  return _$_$GetUserResultFailure(
    getUserFailureResult: GetUserFailureResult.fromJson(
        json['getUserFailureResult'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$GetUserResultFailureToJson(
        _$_$GetUserResultFailure instance) =>
    <String, dynamic>{
      'getUserFailureResult': instance.getUserFailureResult,
    };

_$_$GetUserSuccessResultCtor _$_$_$GetUserSuccessResultCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$GetUserSuccessResultCtor(
    statusCode: json['statusCode'] as int,
    result: UserReadDto.fromJson(json['result'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$GetUserSuccessResultCtorToJson(
        _$_$GetUserSuccessResultCtor instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'result': instance.result,
    };

_$_$GetUserFailureResultCtor _$_$_$GetUserFailureResultCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$GetUserFailureResultCtor(
    statusCode: json['statusCode'] as int,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$_$_$GetUserFailureResultCtorToJson(
        _$_$GetUserFailureResultCtor instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
    };
