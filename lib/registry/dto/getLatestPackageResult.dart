import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/registry/dto/apiResult.dart';
import 'package:hydro_sdk/registry/dto/getLatestPackageReadDto.dart';

part 'getLatestPackageResult.freezed.dart';
part 'getLatestPackageResult.g.dart';

@freezed
class GetLatestPackageResult with _$GetLatestPackageResult {
  const GetLatestPackageResult._();

  const factory GetLatestPackageResult.success({
    required GetLatestPackageSuccessResult getLatestPackageSuccessResult,
  }) = _$GetLatestPackageResultSuccess;

  const factory GetLatestPackageResult.failure({
    required GetLatestPackageFailureResult getLatestPackageFailureResult,
  }) = _$GetLatestPackageResultFailure;

  factory GetLatestPackageResult.fromJson(Map<String, dynamic> json) =>
      _$GetLatestPackageResultFromJson(json);
}

@freezed
class GetLatestPackageSuccessResult
    with _$GetLatestPackageSuccessResult
    implements IApiSuccessResult<GetLatestPackageReadDto> {
  const GetLatestPackageSuccessResult._();

  const factory GetLatestPackageSuccessResult({
    required int statusCode,
    required GetLatestPackageReadDto result,
  }) = _$GetLatestPackageSuccessResultCtor;

  factory GetLatestPackageSuccessResult.fromJson(Map<String, dynamic> json) =>
      _$GetLatestPackageSuccessResultFromJson(json);
}

@freezed
class GetLatestPackageFailureResult
    with _$GetLatestPackageFailureResult
    implements IApiFailureResult {
  const GetLatestPackageFailureResult._();

  const factory GetLatestPackageFailureResult({
    required int statusCode,
    required String message,
  }) = _$GetLatestPackageFailureResultCtor;

  factory GetLatestPackageFailureResult.fromJson(Map<String, dynamic> json) =>
      _$GetLatestPackageFailureResultFromJson(json);
}
