import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/iSwidType.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeMixin.dart';
import 'package:hydro_sdk/swid/util/iCloneable.dart';

part 'swidDefaultFormalParameter.freezed.dart';
part 'swidDefaultFormalParameter.g.dart';

@freezed
class SwidDefaultFormalParameter
    with _$SwidDefaultFormalParameter, SwidTypeMixin<SwidDefaultFormalParameter>
    implements
        ISwidType<SwidDefaultFormalParameter>,
        ICloneable<SwidDefaultFormalParameter> {
  const SwidDefaultFormalParameter._();

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

  @override
  String get name => staticType.name;

  @override
  SwidDeclarationModifiers get declarationModifiers =>
      staticType.declarationModifiers;

  @override
  SwidDefaultFormalParameter clone({
    SwidNullabilitySuffix? nullabilitySuffix,
    String? originalPackagePath,
    SwidType? staticType,
    SwidStaticConst? value,
    String? defaultValueCode,
  }) =>
      SwidDefaultFormalParameter.clone(
        swidDefaultFormalParameter: this,
        nullabilitySuffix: nullabilitySuffix,
        originalPackagePath: originalPackagePath,
        staticType: staticType,
        value: value,
        defaultValueCode: defaultValueCode,
      );
}
