import 'package:freezed_annotation/freezed_annotation.dart';

part 'otaCacheManifest.freezed.dart';
part 'otaCacheManifest.g.dart';

@freezed
class OtaCacheManifest with _$OtaCacheManifest {
  const OtaCacheManifest._();

  const factory OtaCacheManifest({
    required String id,
  }) = _$OtaCacheManifestCtor;

  factory OtaCacheManifest.fromJson(Map<String, dynamic> json) =>
      _$OtaCacheManifestFromJson(json);
}
