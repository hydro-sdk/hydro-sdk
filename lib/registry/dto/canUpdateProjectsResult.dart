import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/registry/dto/apiResult.dart';
import 'package:hydro_sdk/registry/dto/projectEntity.dart';

part 'canUpdateProjectsResult.freezed.dart';
part 'canUpdateProjectsResult.g.dart';

@freezed
class CanUpdateProjectsResult with _$CanUpdateProjectsResult {
  const CanUpdateProjectsResult._();

  const factory CanUpdateProjectsResult.success({
    required CanUpdateProjectsSuccessResult canUpdateProjectsSuccessResult,
  }) = _$CanUpdateProjectsResultSuccess;

  const factory CanUpdateProjectsResult.failure({
    required CanUpdateProjectsFailureResult canUpdateProjectsFailureResult,
  }) = _$CanUpdateProjectsResultFailure;

  factory CanUpdateProjectsResult.fromJson(Map<String, dynamic> json) =>
      _$CanUpdateProjectsResultFromJson(json);
}

@freezed
class CanUpdateProjectsSuccessResult
    with _$CanUpdateProjectsSuccessResult
    implements IApiSuccessResult<List<ProjectEntity>> {
  const CanUpdateProjectsSuccessResult._();

  const factory CanUpdateProjectsSuccessResult({
    required int statusCode,
    required List<ProjectEntity> result,
  }) = _$CanUpdateProjectsSuccessResultCtor;

  factory CanUpdateProjectsSuccessResult.fromJson(Map<String, dynamic> json) =>
      _$CanUpdateProjectsSuccessResultFromJson(json);
}

@freezed
class CanUpdateProjectsFailureResult
    with _$CanUpdateProjectsFailureResult
    implements IApiFailureResult {
  const CanUpdateProjectsFailureResult._();

  const factory CanUpdateProjectsFailureResult({
    required int statusCode,
    required String message,
  }) = _$CanUpdateProjectsFailureResultCtor;

  factory CanUpdateProjectsFailureResult.fromJson(Map<String, dynamic> json) =>
      _$CanUpdateProjectsFailureResultFromJson(json);
}
