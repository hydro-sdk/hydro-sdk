import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/config/swidConfigAllowList.dart';
import 'package:hydro_sdk/swid/config/swidConfigDartEmitOptions.dart';
import 'package:hydro_sdk/swid/config/swidConfigDenyList.dart';
import 'package:hydro_sdk/swid/config/swidConfigTsEmitOptions.dart';

part 'swidConfigEmitOptions.freezed.dart';
part 'swidConfigEmitOptions.g.dart';

@freezed
class SwidConfigEmitOptions with _$SwidConfigEmitOptions {
  const factory SwidConfigEmitOptions({
    required final SwidConfigTsEmitOptions tsEmitOptions,
    required final SwidConfigDartEmitOptions dartEmitOptions,
    required final List<String> prefixPaths,
    required final SwidConfigAllowList allowList,
    required final SwidConfigDenyList denyList,
  }) = _$SwidConfigEmitOptionsCtor;

  factory SwidConfigEmitOptions.fromJson(Map<String, dynamic> json) =>
      _$SwidConfigEmitOptionsFromJson(json);
}
