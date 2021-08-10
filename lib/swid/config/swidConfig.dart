import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/config/swidConfigEmitOptions.dart';

part 'swidConfig.freezed.dart';
part 'swidConfig.g.dart';

@freezed
class SwidConfig with _$SwidConfig {
  const factory SwidConfig({
    required final String inputPackagePath,
    required final List<String> interfaces,
    required final SwidConfigEmitOptions emitOptions,
  }) = _$SwidConfigCtor;

  factory SwidConfig.fromJson(Map<String, dynamic> json) =>
      _$SwidConfigFromJson(json);
}
