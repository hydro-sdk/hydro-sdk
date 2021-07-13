import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/registry/dto/apiResult.dart';
import 'package:hydro_sdk/registry/dto/componentSearchDto.dart';

part 'searchComponentsResult.freezed.dart';
part 'searchComponentsResult.g.dart';

@freezed
class SearchComponentsResult with _$SearchComponentsResult {
  const SearchComponentsResult._();

  const factory SearchComponentsResult.success({
    required SearchComponentsResultSuccessResult
        searchComponentsResultSuccessResult,
  }) = _$SearchComponentsResultSuccess;

  const factory SearchComponentsResult.failure({
    required SearchComponentsResultFailure searchComponentsResultFailure,
  }) = _$SearchComponentsResultFromSearchComponentsResultFailureCtor;

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

  factory SearchComponentsResultSuccessResult.fromJson(
          Map<String, dynamic> json) =>
      _$SearchComponentsResultSuccessResultFromJson(json);
}

@freezed
class SearchComponentsResultFailure
    with _$SearchComponentsResultFailure
    implements IApiFailureResult {
  const SearchComponentsResultFailure._();

  const factory SearchComponentsResultFailure({
    required int statusCode,
    required String message,
  }) = _$SearchComponentsResultFailureCtor;

  factory SearchComponentsResultFailure.fromJson(Map<String, dynamic> json) =>
      _$SearchComponentsResultFailureFromJson(json);
}
