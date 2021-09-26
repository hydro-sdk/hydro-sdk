// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getLatestPackageResult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$GetLatestPackageResultSuccess _$_$_$GetLatestPackageResultSuccessFromJson(
    Map<String, dynamic> json) {
  return _$_$GetLatestPackageResultSuccess(
    getLatestPackageSuccessResult: GetLatestPackageSuccessResult.fromJson(
        json['getLatestPackageSuccessResult'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$GetLatestPackageResultSuccessToJson(
        _$_$GetLatestPackageResultSuccess instance) =>
    <String, dynamic>{
      'getLatestPackageSuccessResult': instance.getLatestPackageSuccessResult,
    };

_$_$GetLatestPackageResultFailure _$_$_$GetLatestPackageResultFailureFromJson(
    Map<String, dynamic> json) {
  return _$_$GetLatestPackageResultFailure(
    getLatestPackageFailureResult: GetLatestPackageFailureResult.fromJson(
        json['getLatestPackageFailureResult'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$GetLatestPackageResultFailureToJson(
        _$_$GetLatestPackageResultFailure instance) =>
    <String, dynamic>{
      'getLatestPackageFailureResult': instance.getLatestPackageFailureResult,
    };

_$_$GetLatestPackageSuccessResultCtor
    _$_$_$GetLatestPackageSuccessResultCtorFromJson(Map<String, dynamic> json) {
  return _$_$GetLatestPackageSuccessResultCtor(
    statusCode: json['statusCode'] as int,
    result: GetLatestPackageReadDto.fromJson(
        json['result'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$GetLatestPackageSuccessResultCtorToJson(
        _$_$GetLatestPackageSuccessResultCtor instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'result': instance.result,
    };

_$_$GetLatestPackageFailureResultCtor
    _$_$_$GetLatestPackageFailureResultCtorFromJson(Map<String, dynamic> json) {
  return _$_$GetLatestPackageFailureResultCtor(
    statusCode: json['statusCode'] as int,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$_$_$GetLatestPackageFailureResultCtorToJson(
        _$_$GetLatestPackageFailureResultCtor instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
    };
