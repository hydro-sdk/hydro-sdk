import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/registry/dto/apiResult.dart';
import 'package:hydro_sdk/registry/dto/projectCreationsReadDto.dart';

part 'getRemainingProjectCreationsResult.freezed.dart';
part 'getRemainingProjectCreationsResult.g.dart';

@freezed
class GetRemainingProjectCreationsResult
    with _$GetRemainingProjectCreationsResult {
  const GetRemainingProjectCreationsResult._();

  const factory GetRemainingProjectCreationsResult.success({
    required GetRemainingProjectCreationsSuccessResult
        getRemainingProjectCreationsSuccessResult,
  }) = _$GetRemainingProjectCreationsResultSuccess;

  const factory GetRemainingProjectCreationsResult.failure({
    required GetRemainingProjectCreationsFailureResult
        getRemainingProjectCreationsFailureResult,
  }) = _$GetRemainingProjectCreationsResultFailure;

  factory GetRemainingProjectCreationsResult.fromJson(
          Map<String, dynamic> json) =>
      _$GetRemainingProjectCreationsResultFromJson(json);
}

@freezed
class GetRemainingProjectCreationsSuccessResult
    with _$GetRemainingProjectCreationsSuccessResult
    implements IApiSuccessResult<ProjectCreationsReadDto> {
  const GetRemainingProjectCreationsSuccessResult._();

  const factory GetRemainingProjectCreationsSuccessResult({
    required int statusCode,
    required ProjectCreationsReadDto result,
  }) = _$GetRemainingProjectCreationsSuccessResultCtor;

  factory GetRemainingProjectCreationsSuccessResult.fromJson(
          Map<String, dynamic> json) =>
      _$GetRemainingProjectCreationsSuccessResultFromJson(json);
}

@freezed
class GetRemainingProjectCreationsFailureResult
    with _$GetRemainingProjectCreationsFailureResult
    implements IApiFailureResult {
  const GetRemainingProjectCreationsFailureResult._();

  const factory GetRemainingProjectCreationsFailureResult({
    required int statusCode,
    required String message,
  }) = _$GetRemainingProjectCreationsFailureResultCtor;

  factory GetRemainingProjectCreationsFailureResult.fromJson(
          Map<String, dynamic> json) =>
      _$GetRemainingProjectCreationsFailureResultFromJson(json);
}
