import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'getPackageDto.freezed.dart';
part 'getPackageDto.g.dart';

@freezed
abstract class GetPackageDto with _$GetPackageDto {
  const factory GetPackageDto({
    @required String sessionId,
    @required String projectName,
    @required String componentName,
    @required String releaseChannelName,
    @required String currentPackageId,
  }) = _$GetPackageDtoCtor;

  factory GetPackageDto.fromJson(Map<String, dynamic> json) =>
      _$GetPackageDtoFromJson(json);
}