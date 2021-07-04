import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';

part 'swidDefaultFormalParameter.freezed.dart';
part 'swidDefaultFormalParameter.g.dart';

@freezed
class SwidDefaultFormalParameter with _$SwidDefaultFormalParameter {
  const factory SwidDefaultFormalParameter({
    required SwidNullabilitySuffix nullabilitySuffix,
    required String originalPackagePath,
    required SwidType staticType,
    required SwidStaticConst value,
    required String defaultValueCode,
  }) = _$Data;

  factory SwidDefaultFormalParameter.fromJson(Map<String, dynamic> json) =>
      _$SwidDefaultFormalParameterFromJson(json);

  factory SwidDefaultFormalParameter.clone({
    required SwidDefaultFormalParameter swidDefaultFormalParameter,
    SwidNullabilitySuffix? nullabilitySuffix,
    String? originalPackagePath,
    SwidType? staticType,
    SwidStaticConst? value,
    String? defaultValueCode,
  }) =>
      SwidDefaultFormalParameter(
        nullabilitySuffix:
            nullabilitySuffix ?? swidDefaultFormalParameter.nullabilitySuffix,
        originalPackagePath: originalPackagePath ??
            swidDefaultFormalParameter.originalPackagePath,
        staticType: staticType ??
            SwidType.clone(
              swidType: swidDefaultFormalParameter.staticType,
            ),
        value: value ??
            SwidStaticConst.clone(
              swidStaticConst: swidDefaultFormalParameter.value,
            ),
        defaultValueCode:
            defaultValueCode ?? swidDefaultFormalParameter.defaultValueCode,
      );
}
