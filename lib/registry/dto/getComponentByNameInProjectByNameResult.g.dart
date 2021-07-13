// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getComponentByNameInProjectByNameResult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$GetComponentByNameInProjectByNameResultSuccess
    _$_$_$GetComponentByNameInProjectByNameResultSuccessFromJson(
        Map<String, dynamic> json) {
  return _$_$GetComponentByNameInProjectByNameResultSuccess(
    getComponentByNameInProjectByNameSuccessResult:
        GetComponentByNameInProjectByNameSuccessResult.fromJson(
            json['getComponentByNameInProjectByNameSuccessResult']
                as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$GetComponentByNameInProjectByNameResultSuccessToJson(
        _$_$GetComponentByNameInProjectByNameResultSuccess instance) =>
    <String, dynamic>{
      'getComponentByNameInProjectByNameSuccessResult':
          instance.getComponentByNameInProjectByNameSuccessResult,
    };

_$_$GetComponentByNameInProjectByNameResultFailure
    _$_$_$GetComponentByNameInProjectByNameResultFailureFromJson(
        Map<String, dynamic> json) {
  return _$_$GetComponentByNameInProjectByNameResultFailure(
    getComponentByNameInProjectByNameFailureResult:
        GetComponentByNameInProjectByNameFailureResult.fromJson(
            json['getComponentByNameInProjectByNameFailureResult']
                as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$GetComponentByNameInProjectByNameResultFailureToJson(
        _$_$GetComponentByNameInProjectByNameResultFailure instance) =>
    <String, dynamic>{
      'getComponentByNameInProjectByNameFailureResult':
          instance.getComponentByNameInProjectByNameFailureResult,
    };

_$_$GetComponentByNameInProjectByNameSuccessResultCtor
    _$_$_$GetComponentByNameInProjectByNameSuccessResultCtorFromJson(
        Map<String, dynamic> json) {
  return _$_$GetComponentByNameInProjectByNameSuccessResultCtor(
    statusCode: json['statusCode'] as int,
    result: ComponentReadDto.fromJson(json['result'] as Map<String, dynamic>),
  );
}

Map<String, dynamic>
    _$_$_$GetComponentByNameInProjectByNameSuccessResultCtorToJson(
            _$_$GetComponentByNameInProjectByNameSuccessResultCtor instance) =>
        <String, dynamic>{
          'statusCode': instance.statusCode,
          'result': instance.result,
        };

_$_$GetComponentByNameInProjectByNameFailureResultCtor
    _$_$_$GetComponentByNameInProjectByNameFailureResultCtorFromJson(
        Map<String, dynamic> json) {
  return _$_$GetComponentByNameInProjectByNameFailureResultCtor(
    statusCode: json['statusCode'] as int,
    message: json['message'] as String,
  );
}

Map<String, dynamic>
    _$_$_$GetComponentByNameInProjectByNameFailureResultCtorToJson(
            _$_$GetComponentByNameInProjectByNameFailureResultCtor instance) =>
        <String, dynamic>{
          'statusCode': instance.statusCode,
          'message': instance.message,
        };
