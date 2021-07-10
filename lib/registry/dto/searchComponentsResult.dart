import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/registry/dto/apiResult.dart';
import 'package:hydro_sdk/registry/dto/componentSearchDto.dart';
import 'package:hydro_sdk/registry/dto/userReadDto.dart';

part 'searchComponentsResult.freezed.dart';
part 'searchComponentsResult.g.dart';

@freezed
class SearchComponentsResult with _$SearchComponentsResult {
  const SearchComponentsResult._();

  const factory SearchComponentsResult.success({
    required SearchComponentsResultSuccessResult searchComponentsResultSuccessResult,
  }) = _$SearchComponentsResultSuccess;

  const factory SearchComponentsResult.failure({
    required SearchComponentsResultFailureResult searchComponentsResultFailureResult,
  }) = _$SearchComponentsResultFailure;

  factory SearchComponentsResult.fromJson(Map<String, dynamic> json) =>
      _$SearchComponentsResultFromJson(json);
}

@freezed
class SearchComponentsResultSuccessResult
    with _$SearchComponentsResultSuccessResult
    implements IApiSuccessResult<List<ComponentSearchDto>> {
  const SearchComponentsResultSuccessResult._();

  const factory SearchComponentsResultSuccessResult({
    required int statusCode,
    required List<ComponentSearchDto> result,
  }) = _$SearchComponentsResultSuccessResultCtor;

  factory SearchComponentsResultSuccessResult.fromJson(Map<String, dynamic> json) =>
      _$SearchComponentsResultSuccessResultFromJson(json);
}

@freezed
class SearchComponentsResultFailureResult
    with _$SearchComponentsResultFailureResult
    implements IApiFailureResult {
  const SearchComponentsResultFailureResult._();

  const factory SearchComponentsResultFailureResult({
    required int statusCode,
    required String message,
  }) = _$SearchComponentsResultFailureResultCtor;

  factory SearchComponentsResultFailureResult.fromJson(Map<String, dynamic> json) =>
      _$SearchComponentsResultFailureResultFromJson(json);
}
