import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/build-project/packageManifestEntry.dart';

part 'packageManifest.freezed.dart';
part 'packageManifest.g.dart';

@freezed
class PackageManifest with _$PackageManifest {
  const factory PackageManifest({
    required String mountableChunk,
    required List<PackageManifestEntry> entries,
    required String signature,
  }) = _$PackageManifestCtor;

  factory PackageManifest.fromJson(Map<String, dynamic> json) =>
      _$PackageManifestFromJson(json);
}
