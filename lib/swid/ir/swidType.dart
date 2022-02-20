import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/iSwidType.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidDefaultFormalParameter.dart';
import 'package:hydro_sdk/swid/ir/swidElement.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidTypeMixin.dart';
import 'package:hydro_sdk/swid/transforms/removeNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/transforms/removeTypeArguments.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iJsonTransformable.dart';

part 'swidType.freezed.dart';
part 'swidType.g.dart';

@freezed
class SwidType
    with
        _$SwidType,
        SwidTypeMixin<SwidType>,
        HashKeyMixin<SwidType>,
        HashComparableMixin<SwidType>
    implements ISwidType<SwidType>, IJsonTransformable {
  SwidType._();

  factory SwidType.fromSwidInterface({
    required final SwidInterface swidInterface,
  }) = _$FromSwidInterface;

  factory SwidType.fromSwidClass({
    required final SwidClass swidClass,
  }) = _$FromSwidClass;

  factory SwidType.fromSwidDefaultFormalParameter({
    required final SwidDefaultFormalParameter swidDefaultFormalParameter,
  }) = _$FromSwidDefaultFormalParameter;

  factory SwidType.fromSwidFunctionType({
    required final SwidFunctionType swidFunctionType,
  }) = _$FromSwidFunctionType;

  factory SwidType.fromJson(Map<String, dynamic> json) =>
      _$SwidTypeFromJson(json);

  factory SwidType.clone({
    required final SwidType swidType,
    final SwidDeclarationModifiers? declarationModifiers,
    final SwidNullabilitySuffix? nullabilitySuffix,
  }) =>
      swidType.when(
        fromSwidInterface: (val) => SwidType.fromSwidInterface(
          swidInterface: val.clone(
            declarationModifiers: declarationModifiers,
            nullabilitySuffix: nullabilitySuffix,
          ),
        ),
        fromSwidClass: (val) => SwidType.fromSwidClass(
          swidClass: val.clone(
            declarationModifiers: declarationModifiers,
            nullabilitySuffix: nullabilitySuffix,
          ),
        ),
        fromSwidDefaultFormalParameter: (val) =>
            SwidType.fromSwidDefaultFormalParameter(
          swidDefaultFormalParameter: val.clone(
            nullabilitySuffix: nullabilitySuffix,
          ),
        ),
        fromSwidFunctionType: (val) => SwidType.fromSwidFunctionType(
          swidFunctionType: val.clone(
            declarationModifiers: declarationModifiers,
            nullabilitySuffix: nullabilitySuffix,
          ),
        ),
      );

  @override
  SwidType fromJson(final Map<String, dynamic> json) => SwidType.fromJson(json);

  @override
  late final Iterable<Iterable<int>> hashableParts = when(
    fromSwidInterface: (val) => val.hashKey.hashableParts,
    fromSwidClass: (val) => val.hashKey.hashableParts,
    fromSwidDefaultFormalParameter: (val) => val.hashKey.hashableParts,
    fromSwidFunctionType: (val) => val.hashKey.hashableParts,
  );

  @override
  SwidType clone({
    final SwidDeclarationModifiers? declarationModifiers,
    final SwidNullabilitySuffix? nullabilitySuffix,
  }) =>
      SwidType.clone(
        swidType: this,
        declarationModifiers: declarationModifiers,
        nullabilitySuffix: nullabilitySuffix,
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

  SwidElement? get element => when(
        fromSwidInterface: (val) => val.element,
        fromSwidClass: (val) => val.element,
        fromSwidDefaultFormalParameter: (val) => val.element,
        fromSwidFunctionType: (val) => val.element,
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
                removeTypeArguments(
                  str: val.name,
                ),
                ...(val.typeArguments.isNotEmpty
                    ? [
                        "<",
                        val.typeArguments
                            .map(
                              (x) => x.type.displayName,
                            )
                            .toList()
                            .join(","),
                        ">"
                      ]
                    : [])
              ].join(""),
              fromSwidClass: (val) => [
                removeTypeArguments(
                  str: val.name,
                ),
                ...(val.typeFormals.isNotEmpty
                    ? [
                        "<",
                        val.typeFormals
                            .map(
                              (x) => x.value.displayName,
                            )
                            .toList()
                            .join(","),
                        ">"
                      ]
                    : [])
              ].join(""),
              fromSwidDefaultFormalParameter: (val) => val.staticType.name,
              fromSwidFunctionType: (val) => val.displayName,
            ),
          )
        ].join(""),
      );
}
