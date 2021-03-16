import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/config/swidConfigAllowList.dart';
import 'package:hydro_sdk/swid/config/swidConfigDartEmitOptions.dart';
import 'package:hydro_sdk/swid/config/swidConfigDenyList.dart';
import 'package:hydro_sdk/swid/config/swidConfigTsEmitOptions.dart';

part 'swidConfigEmitOptions.freezed.dart';
part 'swidConfigEmitOptions.g.dart';

@freezed
abstract class SwidConfigEmitOptions with _$SwidConfigEmitOptions {
  const factory SwidConfigEmitOptions({
    @required SwidConfigTsEmitOptions tsEmitOptions,
    @required SwidConfigDartEmitOptions dartEmitOptions,
    @required List<String> prefixPaths,
    @required SwidConfigAllowList allowList,
    @required SwidConfigDenyList denyList,
  }) = _$SwidConfigEmitOptionsCtor;

  factory SwidConfigEmitOptions.fromJson(Map<String, dynamic> json) =>
      _$SwidConfigEmitOptionsFromJson(json);
}
