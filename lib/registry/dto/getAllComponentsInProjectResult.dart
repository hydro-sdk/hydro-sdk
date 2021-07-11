import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/registry/dto/apiResult.dart';
import 'package:hydro_sdk/registry/dto/componentReadDto.dart';

part 'getAllComponentsInProjectResult.freezed.dart';
part 'getAllComponentsInProjectResult.g.dart';

@freezed
class GetAllComponentsInProjectResult with _$GetAllComponentsInProjectResult {
  const GetAllComponentsInProjectResult._();

  const factory GetAllComponentsInProjectResult.success({
    required GetAllComponentsInProjectSuccessResult
        getAllComponentsInProjectSuccessResult,
  }) = _$GetAllComponentsInProjectResultSuccess;

  const factory GetAllComponentsInProjectResult.failure({
    required GetAllComponentsInProjectFailureResult
        getAllComponentsInProjectFailureResult,
  }) = _$GetAllComponentsInProjectResultFailure;

  factory GetAllComponentsInProjectResult.fromJson(Map<String, dynamic> json) =>
      _$GetAllComponentsInProjectResultFromJson(json);
}

@freezed
class GetAllComponentsInProjectSuccessResult
    with _$GetAllComponentsInProjectSuccessResult
    implements IApiSuccessResult<List<ComponentReadDto>> {
  const GetAllComponentsInProjectSuccessResult._();

  const factory GetAllComponentsInProjectSuccessResult({
    required int statusCode,
    required List<ComponentReadDto> result,
  }) = _$GetAllComponentsInProjectSuccessResultCtor;

  factory GetAllComponentsInProjectSuccessResult.fromJson(
          Map<String, dynamic> json) =>
      _$GetAllComponentsInProjectSuccessResultFromJson(json);
}

@freezed
class GetAllComponentsInProjectFailureResult
    with _$GetAllComponentsInProjectFailureResult
    implements IApiFailureResult {
  const GetAllComponentsInProjectFailureResult._();

  const factory GetAllComponentsInProjectFailureResult({
    required int statusCode,
    required String message,
  }) = _$GetAllComponentsInProjectFailureResultCtor;

  factory GetAllComponentsInProjectFailureResult.fromJson(
          Map<String, dynamic> json) =>
      _$GetAllComponentsInProjectFailureResultFromJson(json);
}
