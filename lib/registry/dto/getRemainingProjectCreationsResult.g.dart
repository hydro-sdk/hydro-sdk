// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getRemainingProjectCreationsResult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$GetRemainingProjectCreationsResultSuccess
    _$_$_$GetRemainingProjectCreationsResultSuccessFromJson(
        Map<String, dynamic> json) {
  return _$_$GetRemainingProjectCreationsResultSuccess(
    getRemainingProjectCreationsSuccessResult:
        GetRemainingProjectCreationsSuccessResult.fromJson(
            json['getRemainingProjectCreationsSuccessResult']
                as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$GetRemainingProjectCreationsResultSuccessToJson(
        _$_$GetRemainingProjectCreationsResultSuccess instance) =>
    <String, dynamic>{
      'getRemainingProjectCreationsSuccessResult':
          instance.getRemainingProjectCreationsSuccessResult,
    };

_$_$GetRemainingProjectCreationsResultFailure
    _$_$_$GetRemainingProjectCreationsResultFailureFromJson(
        Map<String, dynamic> json) {
  return _$_$GetRemainingProjectCreationsResultFailure(
    getRemainingProjectCreationsFailureResult:
        GetRemainingProjectCreationsFailureResult.fromJson(
            json['getRemainingProjectCreationsFailureResult']
                as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$GetRemainingProjectCreationsResultFailureToJson(
        _$_$GetRemainingProjectCreationsResultFailure instance) =>
    <String, dynamic>{
      'getRemainingProjectCreationsFailureResult':
          instance.getRemainingProjectCreationsFailureResult,
    };

_$_$GetRemainingProjectCreationsSuccessResultCtor
    _$_$_$GetRemainingProjectCreationsSuccessResultCtorFromJson(
        Map<String, dynamic> json) {
  return _$_$GetRemainingProjectCreationsSuccessResultCtor(
    statusCode: json['statusCode'] as int,
    result: ProjectCreationsReadDto.fromJson(
        json['result'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$GetRemainingProjectCreationsSuccessResultCtorToJson(
        _$_$GetRemainingProjectCreationsSuccessResultCtor instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'result': instance.result,
    };

_$_$GetRemainingProjectCreationsFailureResultCtor
    _$_$_$GetRemainingProjectCreationsFailureResultCtorFromJson(
        Map<String, dynamic> json) {
  return _$_$GetRemainingProjectCreationsFailureResultCtor(
    statusCode: json['statusCode'] as int,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$_$_$GetRemainingProjectCreationsFailureResultCtorToJson(
        _$_$GetRemainingProjectCreationsFailureResultCtor instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
    };
