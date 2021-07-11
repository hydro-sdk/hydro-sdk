import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/registry/dto/apiResult.dart';

part 'provisionUserResult.freezed.dart';
part 'provisionUserResult.g.dart';

@freezed
class ProvisionUserResult with _$ProvisionUserResult {
  const ProvisionUserResult._();

  const factory ProvisionUserResult.success({
    required ProvisionUserSuccessResult provisionUserSuccessResult,
  }) = _$ProvisionUserResultSuccess;

  const factory ProvisionUserResult.failure({
    required ProvisionUserFailureResult provisionUserFailureResult,
  }) = _$ProvisionUserResultFailure;

  factory ProvisionUserResult.fromJson(Map<String, dynamic> json) =>
      _$ProvisionUserResultFromJson(json);
}

@freezed
class ProvisionUserSuccessResult
    with _$ProvisionUserSuccessResult
    implements IApiSuccessResult<bool> {
  const ProvisionUserSuccessResult._();

  const factory ProvisionUserSuccessResult({
    required int statusCode,
    required bool result,
  }) = _$ProvisionUserSuccessResultCtor;

  factory ProvisionUserSuccessResult.fromJson(Map<String, dynamic> json) =>
      _$ProvisionUserSuccessResultFromJson(json);
}

@freezed
class ProvisionUserFailureResult
    with _$ProvisionUserFailureResult
    implements IApiFailureResult {
  const ProvisionUserFailureResult._();

  const factory ProvisionUserFailureResult({
    required int statusCode,
    required String message,
  }) = _$ProvisionUserFailureResultCtor;

  factory ProvisionUserFailureResult.fromJson(Map<String, dynamic> json) =>
      _$ProvisionUserFailureResultFromJson(json);
}
