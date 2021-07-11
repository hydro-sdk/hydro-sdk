import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/registry/dto/apiResult.dart';
import 'package:hydro_sdk/registry/dto/componentReadDto.dart';

part 'getComponentByNameInProjectByNameResult.freezed.dart';
part 'getComponentByNameInProjectByNameResult.g.dart';

@freezed
class GetComponentByNameInProjectByNameResult
    with _$GetComponentByNameInProjectByNameResult {
  const GetComponentByNameInProjectByNameResult._();

  const factory GetComponentByNameInProjectByNameResult.success({
    required GetComponentByNameInProjectByNameSuccessResult
        getComponentByNameInProjectByNameSuccessResult,
  }) = _$GetComponentByNameInProjectByNameResultSuccess;

  const factory GetComponentByNameInProjectByNameResult.failure({
    required GetComponentByNameInProjectByNameFailureResult
        getComponentByNameInProjectByNameFailureResult,
  }) = _$GetComponentByNameInProjectByNameResultFailure;

  factory GetComponentByNameInProjectByNameResult.fromJson(
          Map<String, dynamic> json) =>
      _$GetComponentByNameInProjectByNameResultFromJson(json);
}

@freezed
class GetComponentByNameInProjectByNameSuccessResult
    with _$GetComponentByNameInProjectByNameSuccessResult
    implements IApiSuccessResult<ComponentReadDto> {
  const GetComponentByNameInProjectByNameSuccessResult._();

  const factory GetComponentByNameInProjectByNameSuccessResult({
    required int statusCode,
    required ComponentReadDto result,
  }) = _$GetComponentByNameInProjectByNameSuccessResultCtor;

  factory GetComponentByNameInProjectByNameSuccessResult.fromJson(
          Map<String, dynamic> json) =>
      _$GetComponentByNameInProjectByNameSuccessResultFromJson(json);
}

@freezed
class GetComponentByNameInProjectByNameFailureResult
    with _$GetComponentByNameInProjectByNameFailureResult
    implements IApiFailureResult {
  const GetComponentByNameInProjectByNameFailureResult._();

  const factory GetComponentByNameInProjectByNameFailureResult({
    required int statusCode,
    required String message,
  }) = _$GetComponentByNameInProjectByNameFailureResultCtor;

  factory GetComponentByNameInProjectByNameFailureResult.fromJson(
          Map<String, dynamic> json) =>
      _$GetComponentByNameInProjectByNameFailureResultFromJson(json);
}
