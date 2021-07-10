// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searchComponentsResult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$SearchComponentsResultSuccess _$_$_$SearchComponentsResultSuccessFromJson(
    Map<String, dynamic> json) {
  return _$_$SearchComponentsResultSuccess(
    searchComponentsResultSuccessResult:
        SearchComponentsResultSuccessResult.fromJson(
            json['searchComponentsResultSuccessResult']
                as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$SearchComponentsResultSuccessToJson(
        _$_$SearchComponentsResultSuccess instance) =>
    <String, dynamic>{
      'searchComponentsResultSuccessResult':
          instance.searchComponentsResultSuccessResult,
    };

_$_$SearchComponentsResultFailure _$_$_$SearchComponentsResultFailureFromJson(
    Map<String, dynamic> json) {
  return _$_$SearchComponentsResultFailure(
    searchComponentsResultFailureResult:
        SearchComponentsResultFailureResult.fromJson(
            json['searchComponentsResultFailureResult']
                as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_$SearchComponentsResultFailureToJson(
        _$_$SearchComponentsResultFailure instance) =>
    <String, dynamic>{
      'searchComponentsResultFailureResult':
          instance.searchComponentsResultFailureResult,
    };

_$_$SearchComponentsResultSuccessResultCtor
    _$_$_$SearchComponentsResultSuccessResultCtorFromJson(
        Map<String, dynamic> json) {
  return _$_$SearchComponentsResultSuccessResultCtor(
    statusCode: json['statusCode'] as int,
    result: (json['result'] as List<dynamic>)
        .map((e) => ComponentSearchDto.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_$SearchComponentsResultSuccessResultCtorToJson(
        _$_$SearchComponentsResultSuccessResultCtor instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'result': instance.result,
    };

_$_$SearchComponentsResultFailureResultCtor
    _$_$_$SearchComponentsResultFailureResultCtorFromJson(
        Map<String, dynamic> json) {
  return _$_$SearchComponentsResultFailureResultCtor(
    statusCode: json['statusCode'] as int,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$_$_$SearchComponentsResultFailureResultCtorToJson(
        _$_$SearchComponentsResultFailureResultCtor instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
    };
