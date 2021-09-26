// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'canUpdateComponentsResult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$CanUpdateComponentsResultSuccess
    _$_$_$CanUpdateComponentsResultSuccessFromJson(Map<String, dynamic> json) {
  return _$_$CanUpdateComponentsResultSuccess(
    canUpdateComponentsSuccessResult: CanUpdateComponentsSuccessResult.fromJson(
        json['canUpdateComponentsSuccessResult'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$CanUpdateComponentsResultSuccessToJson(
        _$_$CanUpdateComponentsResultSuccess instance) =>
    <String, dynamic>{
      'canUpdateComponentsSuccessResult':
          instance.canUpdateComponentsSuccessResult,
    };

_$_$CanUpdateComponentsResultFailure
    _$_$_$CanUpdateComponentsResultFailureFromJson(Map<String, dynamic> json) {
  return _$_$CanUpdateComponentsResultFailure(
    canUpdateComponentsFailureResult: CanUpdateComponentsFailureResult.fromJson(
        json['canUpdateComponentsFailureResult'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$CanUpdateComponentsResultFailureToJson(
        _$_$CanUpdateComponentsResultFailure instance) =>
    <String, dynamic>{
      'canUpdateComponentsFailureResult':
          instance.canUpdateComponentsFailureResult,
    };

_$_$CanUpdateComponentsSuccessResultCtor
    _$_$_$CanUpdateComponentsSuccessResultCtorFromJson(
        Map<String, dynamic> json) {
  return _$_$CanUpdateComponentsSuccessResultCtor(
    statusCode: json['statusCode'] as int,
    result: (json['result'] as List<dynamic>)
        .map((e) => ComponentReadDto.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_$CanUpdateComponentsSuccessResultCtorToJson(
        _$_$CanUpdateComponentsSuccessResultCtor instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'result': instance.result,
    };

_$_$CanUpdateComponentsFailureResultCtor
    _$_$_$CanUpdateComponentsFailureResultCtorFromJson(
        Map<String, dynamic> json) {
  return _$_$CanUpdateComponentsFailureResultCtor(
    statusCode: json['statusCode'] as int,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$_$_$CanUpdateComponentsFailureResultCtorToJson(
        _$_$CanUpdateComponentsFailureResultCtor instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
    };
