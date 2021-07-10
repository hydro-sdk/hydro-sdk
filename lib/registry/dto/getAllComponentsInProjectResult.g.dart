// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getAllComponentsInProjectResult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$GetAllComponentsInProjectResultSuccess
    _$_$_$GetAllComponentsInProjectResultSuccessFromJson(
        Map<String, dynamic> json) {
  return _$_$GetAllComponentsInProjectResultSuccess(
    getAllComponentsInProjectSuccessResult:
        GetAllComponentsInProjectSuccessResult.fromJson(
            json['getAllComponentsInProjectSuccessResult']
                as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$GetAllComponentsInProjectResultSuccessToJson(
        _$_$GetAllComponentsInProjectResultSuccess instance) =>
    <String, dynamic>{
      'getAllComponentsInProjectSuccessResult':
          instance.getAllComponentsInProjectSuccessResult,
    };

_$_$GetAllComponentsInProjectResultFailure
    _$_$_$GetAllComponentsInProjectResultFailureFromJson(
        Map<String, dynamic> json) {
  return _$_$GetAllComponentsInProjectResultFailure(
    getAllComponentsInProjectFailureResult:
        GetAllComponentsInProjectFailureResult.fromJson(
            json['getAllComponentsInProjectFailureResult']
                as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$GetAllComponentsInProjectResultFailureToJson(
        _$_$GetAllComponentsInProjectResultFailure instance) =>
    <String, dynamic>{
      'getAllComponentsInProjectFailureResult':
          instance.getAllComponentsInProjectFailureResult,
    };

_$_$GetAllComponentsInProjectSuccessResultCtor
    _$_$_$GetAllComponentsInProjectSuccessResultCtorFromJson(
        Map<String, dynamic> json) {
  return _$_$GetAllComponentsInProjectSuccessResultCtor(
    statusCode: json['statusCode'] as int,
    result: (json['result'] as List<dynamic>)
        .map((e) => ComponentReadDto.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_$GetAllComponentsInProjectSuccessResultCtorToJson(
        _$_$GetAllComponentsInProjectSuccessResultCtor instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'result': instance.result,
    };

_$_$GetAllComponentsInProjectFailureResultCtor
    _$_$_$GetAllComponentsInProjectFailureResultCtorFromJson(
        Map<String, dynamic> json) {
  return _$_$GetAllComponentsInProjectFailureResultCtor(
    statusCode: json['statusCode'] as int,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$_$_$GetAllComponentsInProjectFailureResultCtorToJson(
        _$_$GetAllComponentsInProjectFailureResultCtor instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
    };
