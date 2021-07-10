// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getAllReleaseChannelsByComponentIdResult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$GetAllReleaseChannelsByComponentIdResultSuccess
    _$_$_$GetAllReleaseChannelsByComponentIdResultSuccessFromJson(
        Map<String, dynamic> json) {
  return _$_$GetAllReleaseChannelsByComponentIdResultSuccess(
    getAllReleaseChannelsByComponentIdSuccessResult:
        GetAllReleaseChannelsByComponentIdSuccessResult.fromJson(
            json['getAllReleaseChannelsByComponentIdSuccessResult']
                as Map<String, dynamic>),
  );
}

Map<String, dynamic>
    _$_$_$GetAllReleaseChannelsByComponentIdResultSuccessToJson(
            _$_$GetAllReleaseChannelsByComponentIdResultSuccess instance) =>
        <String, dynamic>{
          'getAllReleaseChannelsByComponentIdSuccessResult':
              instance.getAllReleaseChannelsByComponentIdSuccessResult,
        };

_$_$GetAllReleaseChannelsByComponentIdResultFailure
    _$_$_$GetAllReleaseChannelsByComponentIdResultFailureFromJson(
        Map<String, dynamic> json) {
  return _$_$GetAllReleaseChannelsByComponentIdResultFailure(
    getAllReleaseChannelsByComponentIdFailureResult:
        GetAllReleaseChannelsByComponentIdFailureResult.fromJson(
            json['getAllReleaseChannelsByComponentIdFailureResult']
                as Map<String, dynamic>),
  );
}

Map<String, dynamic>
    _$_$_$GetAllReleaseChannelsByComponentIdResultFailureToJson(
            _$_$GetAllReleaseChannelsByComponentIdResultFailure instance) =>
        <String, dynamic>{
          'getAllReleaseChannelsByComponentIdFailureResult':
              instance.getAllReleaseChannelsByComponentIdFailureResult,
        };

_$_$GetAllReleaseChannelsByComponentIdSuccessResultCtor
    _$_$_$GetAllReleaseChannelsByComponentIdSuccessResultCtorFromJson(
        Map<String, dynamic> json) {
  return _$_$GetAllReleaseChannelsByComponentIdSuccessResultCtor(
    statusCode: json['statusCode'] as int,
    result: (json['result'] as List<dynamic>)
        .map((e) => ReleaseChannelReadDto.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic>
    _$_$_$GetAllReleaseChannelsByComponentIdSuccessResultCtorToJson(
            _$_$GetAllReleaseChannelsByComponentIdSuccessResultCtor instance) =>
        <String, dynamic>{
          'statusCode': instance.statusCode,
          'result': instance.result,
        };

_$_$GetAllReleaseChannelsByComponentIdFailureResultCtor
    _$_$_$GetAllReleaseChannelsByComponentIdFailureResultCtorFromJson(
        Map<String, dynamic> json) {
  return _$_$GetAllReleaseChannelsByComponentIdFailureResultCtor(
    statusCode: json['statusCode'] as int,
    message: json['message'] as String,
  );
}

Map<String, dynamic>
    _$_$_$GetAllReleaseChannelsByComponentIdFailureResultCtorToJson(
            _$_$GetAllReleaseChannelsByComponentIdFailureResultCtor instance) =>
        <String, dynamic>{
          'statusCode': instance.statusCode,
          'message': instance.message,
        };
