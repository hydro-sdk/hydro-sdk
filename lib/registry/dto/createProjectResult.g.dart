// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'createProjectResult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$CreateProjectResultSuccess _$_$_$CreateProjectResultSuccessFromJson(
    Map<String, dynamic> json) {
  return _$_$CreateProjectResultSuccess(
    createProjectSuccessResult: CreateProjectSuccessResult.fromJson(
        json['createProjectSuccessResult'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$CreateProjectResultSuccessToJson(
        _$_$CreateProjectResultSuccess instance) =>
    <String, dynamic>{
      'createProjectSuccessResult': instance.createProjectSuccessResult,
    };

_$_$CreateProjectResultFailure _$_$_$CreateProjectResultFailureFromJson(
    Map<String, dynamic> json) {
  return _$_$CreateProjectResultFailure(
    createProjectFailureResult: CreateProjectFailureResult.fromJson(
        json['createProjectFailureResult'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$CreateProjectResultFailureToJson(
        _$_$CreateProjectResultFailure instance) =>
    <String, dynamic>{
      'createProjectFailureResult': instance.createProjectFailureResult,
    };

_$_$CreateProjectSuccessResultCtor _$_$_$CreateProjectSuccessResultCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$CreateProjectSuccessResultCtor(
    statusCode: json['statusCode'] as int,
    result: ProjectEntity.fromJson(json['result'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$CreateProjectSuccessResultCtorToJson(
        _$_$CreateProjectSuccessResultCtor instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'result': instance.result,
    };

_$_$CreateProjectFailureResultCtor _$_$_$CreateProjectFailureResultCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$CreateProjectFailureResultCtor(
    statusCode: json['statusCode'] as int,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$_$_$CreateProjectFailureResultCtorToJson(
        _$_$CreateProjectFailureResultCtor instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
    };
