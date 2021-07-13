// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'canUpdateProjectsResult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$CanUpdateProjectsResultSuccess _$_$_$CanUpdateProjectsResultSuccessFromJson(
    Map<String, dynamic> json) {
  return _$_$CanUpdateProjectsResultSuccess(
    canUpdateProjectsSuccessResult: CanUpdateProjectsSuccessResult.fromJson(
        json['canUpdateProjectsSuccessResult'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$CanUpdateProjectsResultSuccessToJson(
        _$_$CanUpdateProjectsResultSuccess instance) =>
    <String, dynamic>{
      'canUpdateProjectsSuccessResult': instance.canUpdateProjectsSuccessResult,
    };

_$_$CanUpdateProjectsResultFailure _$_$_$CanUpdateProjectsResultFailureFromJson(
    Map<String, dynamic> json) {
  return _$_$CanUpdateProjectsResultFailure(
    canUpdateProjectsFailureResult: CanUpdateProjectsFailureResult.fromJson(
        json['canUpdateProjectsFailureResult'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$CanUpdateProjectsResultFailureToJson(
        _$_$CanUpdateProjectsResultFailure instance) =>
    <String, dynamic>{
      'canUpdateProjectsFailureResult': instance.canUpdateProjectsFailureResult,
    };

_$_$CanUpdateProjectsSuccessResultCtor
    _$_$_$CanUpdateProjectsSuccessResultCtorFromJson(
        Map<String, dynamic> json) {
  return _$_$CanUpdateProjectsSuccessResultCtor(
    statusCode: json['statusCode'] as int,
    result: (json['result'] as List<dynamic>)
        .map((e) => ProjectEntity.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_$CanUpdateProjectsSuccessResultCtorToJson(
        _$_$CanUpdateProjectsSuccessResultCtor instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'result': instance.result,
    };

_$_$CanUpdateProjectsFailureResultCtor
    _$_$_$CanUpdateProjectsFailureResultCtorFromJson(
        Map<String, dynamic> json) {
  return _$_$CanUpdateProjectsFailureResultCtor(
    statusCode: json['statusCode'] as int,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$_$_$CanUpdateProjectsFailureResultCtorToJson(
        _$_$CanUpdateProjectsFailureResultCtor instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
    };
