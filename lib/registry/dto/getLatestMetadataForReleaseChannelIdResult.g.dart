// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getLatestMetadataForReleaseChannelIdResult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$GetLatestMetadataForReleaseChannelIdResultSuccess
    _$_$_$GetLatestMetadataForReleaseChannelIdResultSuccessFromJson(
        Map<String, dynamic> json) {
  return _$_$GetLatestMetadataForReleaseChannelIdResultSuccess(
    getLatestMetadataForReleaseChannelIdSuccessResult:
        GetLatestMetadataForReleaseChannelIdSuccessResult.fromJson(
            json['getLatestMetadataForReleaseChannelIdSuccessResult']
                as Map<String, dynamic>),
  );
}

Map<String, dynamic>
    _$_$_$GetLatestMetadataForReleaseChannelIdResultSuccessToJson(
            _$_$GetLatestMetadataForReleaseChannelIdResultSuccess instance) =>
        <String, dynamic>{
          'getLatestMetadataForReleaseChannelIdSuccessResult':
              instance.getLatestMetadataForReleaseChannelIdSuccessResult,
        };

_$_$GetLatestMetadataForReleaseChannelIdResultFailure
    _$_$_$GetLatestMetadataForReleaseChannelIdResultFailureFromJson(
        Map<String, dynamic> json) {
  return _$_$GetLatestMetadataForReleaseChannelIdResultFailure(
    getLatestMetadataForReleaseChannelIdFailureResult:
        GetLatestMetadataForReleaseChannelIdFailureResult.fromJson(
            json['getLatestMetadataForReleaseChannelIdFailureResult']
                as Map<String, dynamic>),
  );
}

Map<String, dynamic>
    _$_$_$GetLatestMetadataForReleaseChannelIdResultFailureToJson(
            _$_$GetLatestMetadataForReleaseChannelIdResultFailure instance) =>
        <String, dynamic>{
          'getLatestMetadataForReleaseChannelIdFailureResult':
              instance.getLatestMetadataForReleaseChannelIdFailureResult,
        };

_$_$GetLatestMetadataForReleaseChannelIdSuccessResultCtor
    _$_$_$GetLatestMetadataForReleaseChannelIdSuccessResultCtorFromJson(
        Map<String, dynamic> json) {
  return _$_$GetLatestMetadataForReleaseChannelIdSuccessResultCtor(
    statusCode: json['statusCode'] as int,
    result: PackageReadDto.fromJson(json['result'] as Map<String, dynamic>),
  );
}

Map<String,
    dynamic> _$_$_$GetLatestMetadataForReleaseChannelIdSuccessResultCtorToJson(
        _$_$GetLatestMetadataForReleaseChannelIdSuccessResultCtor instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'result': instance.result,
    };

_$_$GetLatestMetadataForReleaseChannelIdFailureResultCtor
    _$_$_$GetLatestMetadataForReleaseChannelIdFailureResultCtorFromJson(
        Map<String, dynamic> json) {
  return _$_$GetLatestMetadataForReleaseChannelIdFailureResultCtor(
    statusCode: json['statusCode'] as int,
    message: json['message'] as String,
  );
}

Map<String,
    dynamic> _$_$_$GetLatestMetadataForReleaseChannelIdFailureResultCtorToJson(
        _$_$GetLatestMetadataForReleaseChannelIdFailureResultCtor instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
    };
