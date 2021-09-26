import 'package:freezed_annotation/freezed_annotation.dart';

part 'getLatestPackageDto.freezed.dart';
part 'getLatestPackageDto.g.dart';

@freezed
class GetLatestPackageDto with _$GetLatestPackageDto {
  const GetLatestPackageDto._();

  const factory GetLatestPackageDto({
    required String sessionId,
    required String projectName,
    required String componentName,
    required String releaseChannelName,
    required String currentPackageId,
  }) = _$GetLatestPackageDtoCtor;

  factory GetLatestPackageDto.fromJson(Map<String, dynamic> json) =>
      _$GetLatestPackageDtoFromJson(json);
}
