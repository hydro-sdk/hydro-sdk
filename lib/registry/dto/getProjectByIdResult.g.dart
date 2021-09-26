// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getProjectByIdResult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$GetProjectByIdResultSuccess _$_$_$GetProjectByIdResultSuccessFromJson(
    Map<String, dynamic> json) {
  return _$_$GetProjectByIdResultSuccess(
    getProjectByIdSuccessResult: GetProjectByIdSuccessResult.fromJson(
        json['getProjectByIdSuccessResult'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$GetProjectByIdResultSuccessToJson(
        _$_$GetProjectByIdResultSuccess instance) =>
    <String, dynamic>{
      'getProjectByIdSuccessResult': instance.getProjectByIdSuccessResult,
    };

_$_$GetProjectByIdResultFailure _$_$_$GetProjectByIdResultFailureFromJson(
    Map<String, dynamic> json) {
  return _$_$GetProjectByIdResultFailure(
    getProjectByIdFailureResult: GetProjectByIdFailureResult.fromJson(
        json['getProjectByIdFailureResult'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$GetProjectByIdResultFailureToJson(
        _$_$GetProjectByIdResultFailure instance) =>
    <String, dynamic>{
      'getProjectByIdFailureResult': instance.getProjectByIdFailureResult,
    };

_$_$GetProjectByIdSuccessResultCtor
    _$_$_$GetProjectByIdSuccessResultCtorFromJson(Map<String, dynamic> json) {
  return _$_$GetProjectByIdSuccessResultCtor(
    statusCode: json['statusCode'] as int,
    result: ProjectEntity.fromJson(json['result'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$GetProjectByIdSuccessResultCtorToJson(
        _$_$GetProjectByIdSuccessResultCtor instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'result': instance.result,
    };

_$_$GetProjectByIdFailureResultCtor
    _$_$_$GetProjectByIdFailureResultCtorFromJson(Map<String, dynamic> json) {
  return _$_$GetProjectByIdFailureResultCtor(
    statusCode: json['statusCode'] as int,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$_$_$GetProjectByIdFailureResultCtorToJson(
        _$_$GetProjectByIdFailureResultCtor instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
    };
