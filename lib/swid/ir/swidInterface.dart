import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';

part 'swidInterface.freezed.dart';
part 'swidInterface.g.dart';

@freezed
class SwidInterface with _$SwidInterface {
  const SwidInterface._();

  const factory SwidInterface({
    required String name,
    required SwidNullabilitySuffix nullabilitySuffix,
    required String originalPackagePath,
    required List<SwidType> typeArguments,
    required SwidReferenceDeclarationKind referenceDeclarationKind,
  }) = _$Data;

  factory SwidInterface.fromJson(Map<String, dynamic> json) =>
      _$SwidInterfaceFromJson(json);

  factory SwidInterface.clone({
    required SwidInterface swidType,
    String? name,
    SwidNullabilitySuffix? nullabilitySuffix,
    String? originalPackagePath,
    List<SwidType>? typeArguments,
    SwidReferenceDeclarationKind? referenceDeclarationKind,
  }) =>
      SwidInterface(
        name: name ?? swidType.name,
        nullabilitySuffix: nullabilitySuffix ?? swidType.nullabilitySuffix,
        originalPackagePath:
            originalPackagePath ?? swidType.originalPackagePath,
        typeArguments: typeArguments ?? List.from(swidType.typeArguments),
        referenceDeclarationKind:
            referenceDeclarationKind ?? swidType.referenceDeclarationKind,
      );

  factory SwidInterface.fromSwidClass({
    required SwidClass swidClass,
  }) =>
      SwidInterface(
          name: swidClass.name,
          nullabilitySuffix: swidClass.nullabilitySuffix,
          originalPackagePath: swidClass.originalPackagePath,
          typeArguments: [],
          referenceDeclarationKind: SwidReferenceDeclarationKind.classElement);

  String get displayName =>
      SwidType.fromSwidInterface(swidInterface: this).displayName;
}
