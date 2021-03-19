// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'packageManifest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_$PackageManifestCtor _$_$_$PackageManifestCtorFromJson(
    Map<String, dynamic> json) {
  return _$_$PackageManifestCtor(
    mountableChunk: json['mountableChunk'] as String,
    entries: (json['entries'] as List)
        ?.map((e) => e == null
            ? null
            : PackageManifestEntry.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_$PackageManifestCtorToJson(
        _$_$PackageManifestCtor instance) =>
    <String, dynamic>{
      'mountableChunk': instance.mountableChunk,
      'entries': instance.entries,
    };
