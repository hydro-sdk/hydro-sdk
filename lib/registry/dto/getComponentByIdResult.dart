import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/registry/dto/apiResult.dart';
import 'package:hydro_sdk/registry/dto/componentReadDto.dart';

part 'getComponentByIdResult.freezed.dart';
part 'getComponentByIdResult.g.dart';

@freezed
class GetComponentByIdResult with _$GetComponentByIdResult {
  const GetComponentByIdResult._();

  const factory GetComponentByIdResult.success({
    required GetComponentByIdSuccessResult getComponentByIdSuccessResult,
  }) = _$GetComponentByIdResultSuccess;

  const factory GetComponentByIdResult.failure({
    required GetComponentByIdFailureResult getComponentByIdFailureResult,
  }) = _$GetComponentByIdResultFailure;

  factory GetComponentByIdResult.fromJson(Map<String, dynamic> json) =>
      _$GetComponentByIdResultFromJson(json);
}

@freezed
class GetComponentByIdSuccessResult
    with _$GetComponentByIdSuccessResult
    implements IApiSuccessResult<ComponentReadDto> {
  const GetComponentByIdSuccessResult._();

  const factory GetComponentByIdSuccessResult({
    required int statusCode,
    required ComponentReadDto result,
  }) = _$GetComponentByIdSuccessResultCtor;

  factory GetComponentByIdSuccessResult.fromJson(Map<String, dynamic> json) =>
      _$GetComponentByIdSuccessResultFromJson(json);
}

@freezed
class GetComponentByIdFailureResult
    with _$GetComponentByIdFailureResult
    implements IApiFailureResult {
  const GetComponentByIdFailureResult._();

  const factory GetComponentByIdFailureResult({
    required int statusCode,
    required String message,
  }) = _$GetComponentByIdFailureResultCtor;

  factory GetComponentByIdFailureResult.fromJson(Map<String, dynamic> json) =>
      _$GetComponentByIdFailureResultFromJson(json);
}
