import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';
import 'package:hydro_sdk/swid/util/iJsonTransformable.dart';

part 'swidInterface.freezed.dart';
part 'swidInterface.g.dart';

@freezed
class SwidInterface
    with
        _$SwidInterface,
        SwidTypeMixin<SwidInterface>,
        HashKeyMixin<SwidInterface>,
        HashComparableMixin<SwidInterface>
    implements
        ICopyable<SwidInterface, $SwidInterfaceCopyWith<SwidInterface>>,
        IJsonTransformable {
  SwidInterface._();

  factory SwidInterface({
    required final String name,
    required final SwidNullabilitySuffix nullabilitySuffix,
    required final String originalPackagePath,
    required final List<SwidTypeArgumentType> typeArguments,
    required final SwidReferenceDeclarationKind referenceDeclarationKind,
    required final SwidDeclarationModifiers declarationModifiers,
    final SwidType? element,
  }) = _$Data;

  factory SwidInterface.fromJson(Map<String, dynamic> json) =>
      _$SwidInterfaceFromJson(json);

  @override
  SwidInterface fromJson(Map<String, dynamic> json) =>
      SwidInterface.fromJson(json);

  factory SwidInterface.clone({
    required final SwidInterface swidType,
    final String? name,
    final SwidNullabilitySuffix? nullabilitySuffix,
    final String? originalPackagePath,
    final List<SwidTypeArgumentType>? typeArguments,
    final SwidReferenceDeclarationKind? referenceDeclarationKind,
    final SwidDeclarationModifiers? declarationModifiers,
    final SwidType? element,
  }) =>
      SwidInterface(
        name: name ?? swidType.name,
        nullabilitySuffix: nullabilitySuffix ?? swidType.nullabilitySuffix,
        originalPackagePath:
            originalPackagePath ?? swidType.originalPackagePath,
        typeArguments: typeArguments ?? swidType.typeArguments,
        referenceDeclarationKind:
            referenceDeclarationKind ?? swidType.referenceDeclarationKind,
        declarationModifiers:
            declarationModifiers ?? swidType.declarationModifiers,
        element: element ?? swidType.element,
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

  @override
  late final Iterable<Iterable<int>> hashableParts = (() sync* {
    yield* name.hashableParts;
    yield [
      nullabilitySuffix.index,
    ];
    yield* originalPackagePath.hashableParts;
    yield* typeArguments.hashableParts;
    yield [
      referenceDeclarationKind.index,
    ];
    yield* declarationModifiers.hashKey.hashableParts;
    yield* element?.hashKey.hashableParts ?? [];
  })();

  String get displayName =>
      SwidType.fromSwidInterface(swidInterface: this).displayName;

  @override
  SwidInterface clone({
    final String? name,
    final SwidNullabilitySuffix? nullabilitySuffix,
    final String? originalPackagePath,
    final List<SwidTypeArgumentType>? typeArguments,
    final SwidReferenceDeclarationKind? referenceDeclarationKind,
    final SwidDeclarationModifiers? declarationModifiers,
    final SwidType? element,
  }) =>
      SwidInterface.clone(
        swidType: this,
        name: name,
        nullabilitySuffix: nullabilitySuffix,
        originalPackagePath: originalPackagePath,
        typeArguments: typeArguments,
        referenceDeclarationKind: referenceDeclarationKind,
        declarationModifiers: declarationModifiers,
        element: element,
      );
}
