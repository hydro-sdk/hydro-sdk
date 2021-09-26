import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/registry/dto/apiResult.dart';

part 'createPackageResult.freezed.dart';
part 'createPackageResult.g.dart';

@freezed
class CreatePackageResult with _$CreatePackageResult {
  const CreatePackageResult._();

  const factory CreatePackageResult.success({
    required CreatePackageSuccessResult createPackageSuccessResult,
  }) = _$CreatePackageResultSuccess;

  const factory CreatePackageResult.failure({
    required CreatePackageFailureResult createPackageFailureResult,
  }) = _$CreatePackageResultFailure;

  factory CreatePackageResult.fromJson(Map<String, dynamic> json) =>
      _$CreatePackageResultFromJson(json);
}

@freezed
class CreatePackageSuccessResult
    with _$CreatePackageSuccessResult
    implements IApiSuccessResult<CreatePackageSuccess> {
  const CreatePackageSuccessResult._();

  const factory CreatePackageSuccessResult({
    required int statusCode,
    required CreatePackageSuccess result,
  }) = _$CreatePackageSuccessResultCtor;

  factory CreatePackageSuccessResult.fromJson(Map<String, dynamic> json) =>
      _$CreatePackageSuccessResultFromJson(json);
}

@freezed
class CreatePackageFailureResult
    with _$CreatePackageFailureResult
    implements IApiFailureResult {
  const CreatePackageFailureResult._();

  const factory CreatePackageFailureResult({
    required int statusCode,
    required String message,
  }) = _$CreatePackageFailureResultCtor;

  factory CreatePackageFailureResult.fromJson(Map<String, dynamic> json) =>
      _$CreatePackageFailureResultFromJson(json);
}

@freezed
class CreatePackageSuccess with _$CreatePackageSuccess {
  const CreatePackageSuccess._();

  const factory CreatePackageSuccess() = _$CreatePackageSuccessCtor;

  factory CreatePackageSuccess.fromJson(Map<String, dynamic> json) =>
      _$CreatePackageSuccessFromJson(json);
}
