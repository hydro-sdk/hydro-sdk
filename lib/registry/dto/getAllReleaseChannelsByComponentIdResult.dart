import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/registry/dto/apiResult.dart';
import 'package:hydro_sdk/registry/dto/releaseChannelReadDto.dart';

part 'getAllReleaseChannelsByComponentIdResult.freezed.dart';
part 'getAllReleaseChannelsByComponentIdResult.g.dart';

@freezed
class GetAllReleaseChannelsByComponentIdResult
    with _$GetAllReleaseChannelsByComponentIdResult {
  const GetAllReleaseChannelsByComponentIdResult._();

  const factory GetAllReleaseChannelsByComponentIdResult.success({
    required GetAllReleaseChannelsByComponentIdSuccessResult
        getAllReleaseChannelsByComponentIdSuccessResult,
  }) = _$GetAllReleaseChannelsByComponentIdResultSuccess;

  const factory GetAllReleaseChannelsByComponentIdResult.failure({
    required GetAllReleaseChannelsByComponentIdFailureResult
        getAllReleaseChannelsByComponentIdFailureResult,
  }) = _$GetAllReleaseChannelsByComponentIdResultFailure;

  factory GetAllReleaseChannelsByComponentIdResult.fromJson(
          Map<String, dynamic> json) =>
      _$GetAllReleaseChannelsByComponentIdResultFromJson(json);
}

@freezed
class GetAllReleaseChannelsByComponentIdSuccessResult
    with _$GetAllReleaseChannelsByComponentIdSuccessResult
    implements IApiSuccessResult<List<ReleaseChannelReadDto>> {
  const GetAllReleaseChannelsByComponentIdSuccessResult._();

  const factory GetAllReleaseChannelsByComponentIdSuccessResult({
    required int statusCode,
    required List<ReleaseChannelReadDto> result,
  }) = _$GetAllReleaseChannelsByComponentIdSuccessResultCtor;

  factory GetAllReleaseChannelsByComponentIdSuccessResult.fromJson(
          Map<String, dynamic> json) =>
      _$GetAllReleaseChannelsByComponentIdSuccessResultFromJson(json);
}

@freezed
class GetAllReleaseChannelsByComponentIdFailureResult
    with _$GetAllReleaseChannelsByComponentIdFailureResult
    implements IApiFailureResult {
  const GetAllReleaseChannelsByComponentIdFailureResult._();

  const factory GetAllReleaseChannelsByComponentIdFailureResult({
    required int statusCode,
    required String message,
  }) = _$GetAllReleaseChannelsByComponentIdFailureResultCtor;

  factory GetAllReleaseChannelsByComponentIdFailureResult.fromJson(
          Map<String, dynamic> json) =>
      _$GetAllReleaseChannelsByComponentIdFailureResultFromJson(json);
}
