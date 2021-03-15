import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/config/swidConfigAllowList.dart';
import 'package:hydro_sdk/swid/config/swidConfigDenyList.dart';
import 'package:meta/meta.dart';

part 'swidConfig.freezed.dart';
part 'swidConfig.g.dart';

@freezed
abstract class SwidConfig with _$SwidConfig {
  const factory SwidConfig({
    @required SwidConfigAllowList allowList,
    @required SwidConfigDenyList denyList,
  }) = _$SwidConfigCtor;

  factory SwidConfig.fromJson(Map<String, dynamic> json) =>
      _$SwidConfigFromJson(json);
}
