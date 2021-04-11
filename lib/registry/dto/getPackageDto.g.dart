// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getPackageDto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$GetPackageDtoCtor _$_$_$GetPackageDtoCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$GetPackageDtoCtor(
    sessionId: json['sessionId'] as String,
    projectName: json['projectName'] as String,
    componentName: json['componentName'] as String,
    releaseChannelName: json['releaseChannelName'] as String,
    currentPackageId: json['currentPackageId'] as String,
  );
}

Map<String, dynamic> _$_$_$GetPackageDtoCtorToJson(
        _$_$GetPackageDtoCtor instance) =>
    <String, dynamic>{
      'sessionId': instance.sessionId,
      'projectName': instance.projectName,
      'componentName': instance.componentName,
      'releaseChannelName': instance.releaseChannelName,
      'currentPackageId': instance.currentPackageId,
    };
