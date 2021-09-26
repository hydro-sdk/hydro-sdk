// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'createPackageResult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$CreatePackageResultSuccess _$_$_$CreatePackageResultSuccessFromJson(
    Map<String, dynamic> json) {
  return _$_$CreatePackageResultSuccess(
    createPackageSuccessResult: CreatePackageSuccessResult.fromJson(
        json['createPackageSuccessResult'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$CreatePackageResultSuccessToJson(
        _$_$CreatePackageResultSuccess instance) =>
    <String, dynamic>{
      'createPackageSuccessResult': instance.createPackageSuccessResult,
    };

_$_$CreatePackageResultFailure _$_$_$CreatePackageResultFailureFromJson(
    Map<String, dynamic> json) {
  return _$_$CreatePackageResultFailure(
    createPackageFailureResult: CreatePackageFailureResult.fromJson(
        json['createPackageFailureResult'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$CreatePackageResultFailureToJson(
        _$_$CreatePackageResultFailure instance) =>
    <String, dynamic>{
      'createPackageFailureResult': instance.createPackageFailureResult,
    };

_$_$CreatePackageSuccessResultCtor _$_$_$CreatePackageSuccessResultCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$CreatePackageSuccessResultCtor(
    statusCode: json['statusCode'] as int,
    result:
        CreatePackageSuccess.fromJson(json['result'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$CreatePackageSuccessResultCtorToJson(
        _$_$CreatePackageSuccessResultCtor instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'result': instance.result,
    };

_$_$CreatePackageFailureResultCtor _$_$_$CreatePackageFailureResultCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$CreatePackageFailureResultCtor(
    statusCode: json['statusCode'] as int,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$_$_$CreatePackageFailureResultCtorToJson(
        _$_$CreatePackageFailureResultCtor instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
    };

_$_$CreatePackageSuccessCtor _$_$_$CreatePackageSuccessCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$CreatePackageSuccessCtor();
}

Map<String, dynamic> _$_$_$CreatePackageSuccessCtorToJson(
        _$_$CreatePackageSuccessCtor instance) =>
    <String, dynamic>{};
