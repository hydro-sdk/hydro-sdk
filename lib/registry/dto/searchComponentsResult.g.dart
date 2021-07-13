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

_$_$SearchComponentsResultFromSearchComponentsResultFailureCtor
    _$_$_$SearchComponentsResultFromSearchComponentsResultFailureCtorFromJson(
        Map<String, dynamic> json) {
  return _$_$SearchComponentsResultFromSearchComponentsResultFailureCtor(
    searchComponentsResultFailure: SearchComponentsResultFailure.fromJson(
        json['searchComponentsResultFailure'] as Map<String, dynamic>),
  );
}

Map<String, dynamic>
    _$_$_$SearchComponentsResultFromSearchComponentsResultFailureCtorToJson(
            _$_$SearchComponentsResultFromSearchComponentsResultFailureCtor
                instance) =>
        <String, dynamic>{
          'searchComponentsResultFailure':
              instance.searchComponentsResultFailure,
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

_$_$SearchComponentsResultFailureCtor
    _$_$_$SearchComponentsResultFailureCtorFromJson(Map<String, dynamic> json) {
  return _$_$SearchComponentsResultFailureCtor(
    statusCode: json['statusCode'] as int,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$_$_$SearchComponentsResultFailureCtorToJson(
        _$_$SearchComponentsResultFailureCtor instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
    };
