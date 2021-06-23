import 'package:freezed_annotation/freezed_annotation.dart';

part 'packageManifestEntry.freezed.dart';
part 'packageManifestEntry.g.dart';

@freezed
class PackageManifestEntry with _$PackageManifestEntry {
  const factory PackageManifestEntry({
    required String path,
    required String sha256,
  }) = _$PackageManifestEntryCtor;

  factory PackageManifestEntry.fromJson(Map<String, dynamic> json) =>
      _$PackageManifestEntryFromJson(json);
}
