import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/registry/dto/apiResult.dart';
import 'package:hydro_sdk/registry/dto/projectEntity.dart';

part 'getProjectByIdResult.freezed.dart';
part 'getProjectByIdResult.g.dart';

@freezed
class GetProjectByIdResult with _$GetProjectByIdResult {
  const GetProjectByIdResult._();

  const factory GetProjectByIdResult.success({
    required GetProjectByIdSuccessResult getProjectByIdSuccessResult,
  }) = _$GetProjectByIdResultSuccess;

  const factory GetProjectByIdResult.failure({
    required GetProjectByIdFailureResult getProjectByIdFailureResult,
  }) = _$GetProjectByIdResultFailure;

  factory GetProjectByIdResult.fromJson(Map<String, dynamic> json) =>
      _$GetProjectByIdResultFromJson(json);
}

@freezed
class GetProjectByIdSuccessResult
    with _$GetProjectByIdSuccessResult
    implements IApiSuccessResult<ProjectEntity> {
  const GetProjectByIdSuccessResult._();

  const factory GetProjectByIdSuccessResult({
    required int statusCode,
    required ProjectEntity result,
  }) = _$GetProjectByIdSuccessResultCtor;

  factory GetProjectByIdSuccessResult.fromJson(Map<String, dynamic> json) =>
      _$GetProjectByIdSuccessResultFromJson(json);
}

@freezed
class GetProjectByIdFailureResult
    with _$GetProjectByIdFailureResult
    implements IApiFailureResult {
  const GetProjectByIdFailureResult._();

  const factory GetProjectByIdFailureResult({
    required int statusCode,
    required String message,
  }) = _$GetProjectByIdFailureResultCtor;

  factory GetProjectByIdFailureResult.fromJson(Map<String, dynamic> json) =>
      _$GetProjectByIdFailureResultFromJson(json);
}
