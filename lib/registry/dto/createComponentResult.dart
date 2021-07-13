import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/registry/dto/apiResult.dart';
import 'package:hydro_sdk/registry/dto/createComponentResponseDto.dart';

part 'createComponentResult.freezed.dart';
part 'createComponentResult.g.dart';

@freezed
class CreateComponentResult with _$CreateComponentResult {
  const CreateComponentResult._();

  const factory CreateComponentResult.success({
    required CreateComponentSuccessResult createComponentSuccessResult,
  }) = _$CreateComponentResultSuccess;

  const factory CreateComponentResult.failure({
    required CreateComponentFailureResult createComponentFailureResult,
  }) = _$CreateComponentResultFailure;

  factory CreateComponentResult.fromJson(Map<String, dynamic> json) =>
      _$CreateComponentResultFromJson(json);
}

@freezed
class CreateComponentSuccessResult
    with _$CreateComponentSuccessResult
    implements IApiSuccessResult<CreateComponentResponseDto> {
  const CreateComponentSuccessResult._();

  const factory CreateComponentSuccessResult({
    required int statusCode,
    required CreateComponentResponseDto result,
  }) = _$CreateComponentSuccessResultCtor;

  factory CreateComponentSuccessResult.fromJson(Map<String, dynamic> json) =>
      _$CreateComponentSuccessResultFromJson(json);
}

@freezed
class CreateComponentFailureResult
    with _$CreateComponentFailureResult
    implements IApiFailureResult {
  const CreateComponentFailureResult._();

  const factory CreateComponentFailureResult({
    required int statusCode,
    required String message,
  }) = _$CreateComponentFailureResultCtor;

  factory CreateComponentFailureResult.fromJson(Map<String, dynamic> json) =>
      _$CreateComponentFailureResultFromJson(json);
}
