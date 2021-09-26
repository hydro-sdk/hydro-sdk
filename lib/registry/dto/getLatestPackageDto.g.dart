// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getLatestPackageDto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$GetLatestPackageDtoCtor _$_$_$GetLatestPackageDtoCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$GetLatestPackageDtoCtor(
    sessionId: json['sessionId'] as String,
    projectName: json['projectName'] as String,
    componentName: json['componentName'] as String,
    releaseChannelName: json['releaseChannelName'] as String,
    currentPackageId: json['currentPackageId'] as String,
  );
}

Map<String, dynamic> _$_$_$GetLatestPackageDtoCtorToJson(
        _$_$GetLatestPackageDtoCtor instance) =>
    <String, dynamic>{
      'sessionId': instance.sessionId,
      'projectName': instance.projectName,
      'componentName': instance.componentName,
      'releaseChannelName': instance.releaseChannelName,
      'currentPackageId': instance.currentPackageId,
    };
