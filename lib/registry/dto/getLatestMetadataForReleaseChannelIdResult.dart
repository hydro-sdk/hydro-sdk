import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/registry/dto/apiResult.dart';
import 'package:hydro_sdk/registry/dto/packageReadDto.dart';

part 'getLatestMetadataForReleaseChannelIdResult.freezed.dart';
part 'getLatestMetadataForReleaseChannelIdResult.g.dart';

@freezed
class GetLatestMetadataForReleaseChannelIdResult
    with _$GetLatestMetadataForReleaseChannelIdResult {
  const GetLatestMetadataForReleaseChannelIdResult._();

  const factory GetLatestMetadataForReleaseChannelIdResult.success({
    required GetLatestMetadataForReleaseChannelIdSuccessResult
        getLatestMetadataForReleaseChannelIdSuccessResult,
  }) = _$GetLatestMetadataForReleaseChannelIdResultSuccess;

  const factory GetLatestMetadataForReleaseChannelIdResult.failure({
    required GetLatestMetadataForReleaseChannelIdFailureResult
        getLatestMetadataForReleaseChannelIdFailureResult,
  }) = _$GetLatestMetadataForReleaseChannelIdResultFailure;

  factory GetLatestMetadataForReleaseChannelIdResult.fromJson(
          Map<String, dynamic> json) =>
      _$GetLatestMetadataForReleaseChannelIdResultFromJson(json);
}

@freezed
class GetLatestMetadataForReleaseChannelIdSuccessResult
    with _$GetLatestMetadataForReleaseChannelIdSuccessResult
    implements IApiSuccessResult<PackageReadDto> {
  const GetLatestMetadataForReleaseChannelIdSuccessResult._();

  const factory GetLatestMetadataForReleaseChannelIdSuccessResult({
    required int statusCode,
    required PackageReadDto result,
  }) = _$GetLatestMetadataForReleaseChannelIdSuccessResultCtor;

  factory GetLatestMetadataForReleaseChannelIdSuccessResult.fromJson(
          Map<String, dynamic> json) =>
      _$GetLatestMetadataForReleaseChannelIdSuccessResultFromJson(json);
}

@freezed
class GetLatestMetadataForReleaseChannelIdFailureResult
    with _$GetLatestMetadataForReleaseChannelIdFailureResult
    implements IApiFailureResult {
  const GetLatestMetadataForReleaseChannelIdFailureResult._();

  const factory GetLatestMetadataForReleaseChannelIdFailureResult({
    required int statusCode,
    required String message,
  }) = _$GetLatestMetadataForReleaseChannelIdFailureResultCtor;

  factory GetLatestMetadataForReleaseChannelIdFailureResult.fromJson(
          Map<String, dynamic> json) =>
      _$GetLatestMetadataForReleaseChannelIdFailureResultFromJson(json);
}
