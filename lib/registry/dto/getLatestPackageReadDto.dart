import 'package:freezed_annotation/freezed_annotation.dart';

part 'getLatestPackageReadDto.freezed.dart';
part 'getLatestPackageReadDto.g.dart';

@freezed
class GetLatestPackageReadDto with _$GetLatestPackageReadDto {
  const GetLatestPackageReadDto._();

  const factory GetLatestPackageReadDto({
    required String id,
    required String url,
  }) = _$GetLatestPackageReadDtoCtor;

  factory GetLatestPackageReadDto.fromJson(Map<String, dynamic> json) =>
      _$GetLatestPackageReadDtoFromJson(json);
}
