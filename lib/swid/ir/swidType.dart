import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:hydro_sdk/swid/ir/iSwidType.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeMixin.dart';
import 'package:hydro_sdk/swid/transforms/removeNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/transforms/removeTypeArguments.dart';
import 'package:hydro_sdk/swid/util/iCloneable.dart';

part 'swidType.freezed.dart';
part 'swidType.g.dart';

@freezed
class SwidType
    with _$SwidType, SwidTypeMixin<SwidType>
    implements ICloneable<SwidType>, ISwidType<SwidType> {
  const SwidType._();

  const factory SwidType.fromSwidInterface({
    required final SwidInterface swidInterface,
  }) = _$FromSwidInterface;

  const factory SwidType.fromSwidClass({
    required final SwidClass swidClass,
  }) = _$FromSwidClass;

  const factory SwidType.fromSwidDefaultFormalParameter({
    required final SwidDefaultFormalParameter swidDefaultFormalParameter,
  }) = _$FromSwidDefaultFormalParameter;

  const factory SwidType.fromSwidFunctionType({
    required final SwidFunctionType swidFunctionType,
  }) = _$FromSwidFunctionType;

  factory SwidType.fromJson(Map<String, dynamic> json) =>
      _$SwidTypeFromJson(json);

  factory SwidType.clone({
    required final SwidType swidType,
  }) =>
      swidType.when(
        fromSwidInterface: (val) => SwidType.fromSwidInterface(
          swidInterface: SwidInterface.clone(
            swidType: val,
          ),
        ),
        fromSwidClass: (val) => SwidType.fromSwidClass(
          swidClass: SwidClass.clone(
            swidClass: val,
          ),
        ),
        fromSwidDefaultFormalParameter: (val) =>
            SwidType.fromSwidDefaultFormalParameter(
          swidDefaultFormalParameter: SwidDefaultFormalParameter.clone(
            swidDefaultFormalParameter: val,
          ),
        ),
        fromSwidFunctionType: (val) => SwidType.fromSwidFunctionType(
          swidFunctionType: SwidFunctionType.clone(
            swidFunctionType: val,
          ),
        ),
      );

  @override
  SwidType clone() => SwidType.clone(
        swidType: this,
      );

  @override
  SwidDeclarationModifiers get declarationModifiers => when(
        fromSwidInterface: (val) => val.declarationModifiers,
        fromSwidClass: (val) => val.declarationModifiers,
        fromSwidDefaultFormalParameter: (val) => val.declarationModifiers,
        fromSwidFunctionType: (val) => val.declarationModifiers,
      );

  SwidNullabilitySuffix get nullabilitySuffix => when(
      fromSwidInterface: (val) => val.nullabilitySuffix,
      fromSwidClass: (val) => val.nullabilitySuffix,
      fromSwidDefaultFormalParameter: (val) => val.nullabilitySuffix,
      fromSwidFunctionType: (val) => val.nullabilitySuffix);

  String get name => when(
        fromSwidInterface: (val) => val.name,
        fromSwidClass: (val) => val.name,
        fromSwidDefaultFormalParameter: (val) => val.staticType.name,
        fromSwidFunctionType: (val) => val.name,
      );

  String get originalPackagePath => when(
        fromSwidInterface: (val) => val.originalPackagePath,
        fromSwidClass: (val) => val.originalPackagePath,
        fromSwidDefaultFormalParameter: (val) => val.originalPackagePath,
        fromSwidFunctionType: (val) => val.originalPackagePath,
      );

  String get displayName => (({
        required final String name,
      }) =>
              name.isNotEmpty
                  ? [
                      name,
                      nullabilitySuffix == SwidNullabilitySuffix.question
                          ? "?"
                          : "",
                    ].join("")
                  : name)(
          name: [
        removeNullabilitySuffix(
          str: when(
            fromSwidInterface: (val) => [
              removeTypeArguments(str: val.name),
              ...(val.typeArguments.isNotEmpty
                  ? [
                      "<",
                      val.typeArguments
                          .map((x) => x.displayName)
                          .toList()
                          .join(","),
                      ">"
                    ]
                  : [])
            ].join(""),
            fromSwidClass: (val) => [
              removeTypeArguments(str: val.name),
              ...(val.typeFormals.isNotEmpty
                  ? [
                      "<",
                      val.typeFormals
                          .map((x) => x.value.displayName)
                          .toList()
                          .join(","),
                      ">"
                    ]
                  : [])
            ].join(""),
            fromSwidDefaultFormalParameter: (val) => val.staticType.name,
            fromSwidFunctionType: (val) => val.name,
          ),
        )
      ].join(""));
}
