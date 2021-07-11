import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/registry/dto/apiResult.dart';
import 'package:hydro_sdk/registry/dto/projectEntity.dart';

part 'createProjectResult.freezed.dart';
part 'createProjectResult.g.dart';

@freezed
class CreateProjectResult with _$CreateProjectResult {
  const CreateProjectResult._();

  const factory CreateProjectResult.success({
    required CreateProjectSuccessResult createProjectSuccessResult,
  }) = _$CreateProjectResultSuccess;

  const factory CreateProjectResult.failure({
    required CreateProjectFailureResult createProjectFailureResult,
  }) = _$CreateProjectResultFailure;

  factory CreateProjectResult.fromJson(Map<String, dynamic> json) =>
      _$CreateProjectResultFromJson(json);
}

@freezed
class CreateProjectSuccessResult
    with _$CreateProjectSuccessResult
    implements IApiSuccessResult<ProjectEntity> {
  const CreateProjectSuccessResult._();

  const factory CreateProjectSuccessResult({
    required int statusCode,
    required ProjectEntity result,
  }) = _$CreateProjectSuccessResultCtor;

  factory CreateProjectSuccessResult.fromJson(Map<String, dynamic> json) =>
      _$CreateProjectSuccessResultFromJson(json);
}

@freezed
class CreateProjectFailureResult
    with _$CreateProjectFailureResult
    implements IApiFailureResult {
  const CreateProjectFailureResult._();

  const factory CreateProjectFailureResult({
    required int statusCode,
    required String message,
  }) = _$CreateProjectFailureResultCtor;

  factory CreateProjectFailureResult.fromJson(Map<String, dynamic> json) =>
      _$CreateProjectFailureResultFromJson(json);
}
