import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/registry/dto/apiResult.dart';
import 'package:hydro_sdk/registry/dto/userReadDto.dart';

part 'getUserResult.freezed.dart';
part 'getUserResult.g.dart';

@freezed
class GetUserResult with _$GetUserResult {
  const GetUserResult._();

  const factory GetUserResult.success({
    required GetUserSuccessResult getUserSuccessResult,
  }) = _$GetUserResultSuccess;

  const factory GetUserResult.failure({
    required GetUserFailureResult getUserFailureResult,
  }) = _$GetUserResultFailure;

  factory GetUserResult.fromJson(Map<String, dynamic> json) =>
      _$GetUserResultFromJson(json);
}

@freezed
class GetUserSuccessResult
    with _$GetUserSuccessResult
    implements IApiSuccessResult<UserReadDto> {
  const GetUserSuccessResult._();

  const factory GetUserSuccessResult({
    required int statusCode,
    required UserReadDto result,
  }) = _$GetUserSuccessResultCtor;

  factory GetUserSuccessResult.fromJson(Map<String, dynamic> json) =>
      _$GetUserSuccessResultFromJson(json);
}

@freezed
class GetUserFailureResult
    with _$GetUserFailureResult
    implements IApiFailureResult {
  const GetUserFailureResult._();

  const factory GetUserFailureResult({
    required int statusCode,
    required String message,
  }) = _$GetUserFailureResultCtor;

  factory GetUserFailureResult.fromJson(Map<String, dynamic> json) =>
      _$GetUserFailureResultFromJson(json);
}
