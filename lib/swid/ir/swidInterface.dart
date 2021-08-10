import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/iSwidType.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeMixin.dart';
import 'package:hydro_sdk/swid/util/iCloneable.dart';

part 'swidInterface.freezed.dart';
part 'swidInterface.g.dart';

@freezed
class SwidInterface
    with _$SwidInterface, SwidTypeMixin<SwidInterface>
    implements ISwidType<SwidInterface>, ICloneable<SwidInterface> {
  const SwidInterface._();

  const factory SwidInterface({
    required final String name,
    required final SwidNullabilitySuffix nullabilitySuffix,
    required final String originalPackagePath,
    required final List<SwidType> typeArguments,
    required final SwidReferenceDeclarationKind referenceDeclarationKind,
    required final SwidDeclarationModifiers declarationModifiers,
  }) = _$Data;

  factory SwidInterface.fromJson(Map<String, dynamic> json) =>
      _$SwidInterfaceFromJson(json);

  factory SwidInterface.clone({
    required final SwidInterface swidType,
    String? name,
    SwidNullabilitySuffix? nullabilitySuffix,
    String? originalPackagePath,
    List<SwidType>? typeArguments,
    SwidReferenceDeclarationKind? referenceDeclarationKind,
    SwidDeclarationModifiers? declarationModifiers,
  }) =>
      SwidInterface(
        name: name ?? swidType.name,
        nullabilitySuffix: nullabilitySuffix ?? swidType.nullabilitySuffix,
        originalPackagePath:
            originalPackagePath ?? swidType.originalPackagePath,
        typeArguments: typeArguments ?? List.from(swidType.typeArguments),
        referenceDeclarationKind:
            referenceDeclarationKind ?? swidType.referenceDeclarationKind,
        declarationModifiers: declarationModifiers ??
            SwidDeclarationModifiers.clone(
              declarationModifiers: swidType.declarationModifiers,
            ),
      );

  factory SwidInterface.fromSwidClass({
    required final SwidClass swidClass,
  }) =>
      SwidInterface(
        name: swidClass.name,
        nullabilitySuffix: swidClass.nullabilitySuffix,
        originalPackagePath: swidClass.originalPackagePath,
        typeArguments: [],
        declarationModifiers: swidClass.declarationModifiers,
        referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
      );

  String get displayName =>
      SwidType.fromSwidInterface(swidInterface: this).displayName;

  @override
  SwidInterface clone({
    String? name,
    SwidNullabilitySuffix? nullabilitySuffix,
    String? originalPackagePath,
    List<SwidType>? typeArguments,
    SwidReferenceDeclarationKind? referenceDeclarationKind,
    SwidDeclarationModifiers? declarationModifiers,
  }) =>
      SwidInterface.clone(
        swidType: this,
        name: name,
        nullabilitySuffix: nullabilitySuffix,
        originalPackagePath: originalPackagePath,
        typeArguments: typeArguments,
        referenceDeclarationKind: referenceDeclarationKind,
        declarationModifiers: declarationModifiers,
      );
}
