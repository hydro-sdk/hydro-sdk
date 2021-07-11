import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/registry/dto/apiResult.dart';

part 'createMockUserResult.freezed.dart';
part 'createMockUserResult.g.dart';

@freezed
class CreateMockUserResult with _$CreateMockUserResult {
  const CreateMockUserResult._();

  const factory CreateMockUserResult.success({
    required CreateMockUserSuccessResult createMockUserSuccessResult,
  }) = _$CreateMockUserResultSuccess;

  const factory CreateMockUserResult.failure({
    required CreateMockUserFailureResult createMockUserFailureResult,
  }) = _$CreateMockUserResultFailure;

  factory CreateMockUserResult.fromJson(Map<String, dynamic> json) =>
      _$CreateMockUserResultFromJson(json);
}

@freezed
class CreateMockUserSuccessResult
    with _$CreateMockUserSuccessResult
    implements IApiSuccessResult<String> {
  const CreateMockUserSuccessResult._();

  const factory CreateMockUserSuccessResult({
    required int statusCode,
    required String result,
  }) = _$CreateMockUserSuccessResultCtor;

  factory CreateMockUserSuccessResult.fromJson(Map<String, dynamic> json) =>
      _$CreateMockUserSuccessResultFromJson(json);
}

@freezed
class CreateMockUserFailureResult
    with _$CreateMockUserFailureResult
    implements IApiFailureResult {
  const CreateMockUserFailureResult._();

  const factory CreateMockUserFailureResult({
    required int statusCode,
    required String message,
  }) = _$CreateMockUserFailureResultCtor;

  factory CreateMockUserFailureResult.fromJson(Map<String, dynamic> json) =>
      _$CreateMockUserFailureResultFromJson(json);
}
