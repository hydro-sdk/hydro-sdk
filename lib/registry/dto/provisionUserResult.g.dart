// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provisionUserResult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$ProvisionUserResultSuccess _$_$_$ProvisionUserResultSuccessFromJson(
    Map<String, dynamic> json) {
  return _$_$ProvisionUserResultSuccess(
    provisionUserSuccessResult: ProvisionUserSuccessResult.fromJson(
        json['provisionUserSuccessResult'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$ProvisionUserResultSuccessToJson(
        _$_$ProvisionUserResultSuccess instance) =>
    <String, dynamic>{
      'provisionUserSuccessResult': instance.provisionUserSuccessResult,
    };

_$_$ProvisionUserResultFailure _$_$_$ProvisionUserResultFailureFromJson(
    Map<String, dynamic> json) {
  return _$_$ProvisionUserResultFailure(
    provisionUserFailureResult: ProvisionUserFailureResult.fromJson(
        json['provisionUserFailureResult'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$ProvisionUserResultFailureToJson(
        _$_$ProvisionUserResultFailure instance) =>
    <String, dynamic>{
      'provisionUserFailureResult': instance.provisionUserFailureResult,
    };

_$_$ProvisionUserSuccessResultCtor _$_$_$ProvisionUserSuccessResultCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$ProvisionUserSuccessResultCtor(
    statusCode: json['statusCode'] as int,
    result: json['result'] as bool,
  );
}

Map<String, dynamic> _$_$_$ProvisionUserSuccessResultCtorToJson(
        _$_$ProvisionUserSuccessResultCtor instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'result': instance.result,
    };

_$_$ProvisionUserFailureResultCtor _$_$_$ProvisionUserFailureResultCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$ProvisionUserFailureResultCtor(
    statusCode: json['statusCode'] as int,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$_$_$ProvisionUserFailureResultCtorToJson(
        _$_$ProvisionUserFailureResultCtor instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
    };
