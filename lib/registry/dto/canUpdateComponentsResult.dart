import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/registry/dto/apiResult.dart';
import 'package:hydro_sdk/registry/dto/componentReadDto.dart';

part 'canUpdateComponentsResult.freezed.dart';
part 'canUpdateComponentsResult.g.dart';

@freezed
class CanUpdateComponentsResult with _$CanUpdateComponentsResult {
  const CanUpdateComponentsResult._();

  const factory CanUpdateComponentsResult.success({
    required CanUpdateComponentsSuccessResult canUpdateComponentsSuccessResult,
  }) = _$CanUpdateComponentsResultSuccess;

  const factory CanUpdateComponentsResult.failure({
    required CanUpdateComponentsFailureResult canUpdateComponentsFailureResult,
  }) = _$CanUpdateComponentsResultFailure;

  factory CanUpdateComponentsResult.fromJson(Map<String, dynamic> json) =>
      _$CanUpdateComponentsResultFromJson(json);
}

@freezed
class CanUpdateComponentsSuccessResult
    with _$CanUpdateComponentsSuccessResult
    implements IApiSuccessResult<List<ComponentReadDto>> {
  const CanUpdateComponentsSuccessResult._();

  const factory CanUpdateComponentsSuccessResult({
    required int statusCode,
    required List<ComponentReadDto> result,
  }) = _$CanUpdateComponentsSuccessResultCtor;

  factory CanUpdateComponentsSuccessResult.fromJson(
          Map<String, dynamic> json) =>
      _$CanUpdateComponentsSuccessResultFromJson(json);
}

@freezed
class CanUpdateComponentsFailureResult
    with _$CanUpdateComponentsFailureResult
    implements IApiFailureResult {
  const CanUpdateComponentsFailureResult._();

  const factory CanUpdateComponentsFailureResult({
    required int statusCode,
    required String message,
  }) = _$CanUpdateComponentsFailureResultCtor;

  factory CanUpdateComponentsFailureResult.fromJson(
          Map<String, dynamic> json) =>
      _$CanUpdateComponentsFailureResultFromJson(json);
}
