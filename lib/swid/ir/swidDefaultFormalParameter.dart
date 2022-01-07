import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConst.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeMixin.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';
import 'package:hydro_sdk/swid/util/iJsonTransformable.dart';

part 'swidDefaultFormalParameter.freezed.dart';
part 'swidDefaultFormalParameter.g.dart';

@freezed
class SwidDefaultFormalParameter
    with
        _$SwidDefaultFormalParameter,
        SwidTypeMixin<SwidDefaultFormalParameter>,
        HashKeyMixin<SwidDefaultFormalParameter>,
        HashComparableMixin<SwidDefaultFormalParameter>
    implements
        ICopyable<SwidDefaultFormalParameter,
            $SwidDefaultFormalParameterCopyWith<SwidDefaultFormalParameter>>,
        IJsonTransformable {
  SwidDefaultFormalParameter._();

  factory SwidDefaultFormalParameter({
    required final SwidNullabilitySuffix nullabilitySuffix,
    required final String originalPackagePath,
    required final SwidType staticType,
    required final SwidStaticConst value,
    required final String defaultValueCode,
    final SwidType? element,
  }) = _$Data;

  factory SwidDefaultFormalParameter.fromJson(Map<String, dynamic> json) =>
      _$SwidDefaultFormalParameterFromJson(json);

  @override
  SwidDefaultFormalParameter fromJson(Map<String, dynamic> json) =>
      SwidDefaultFormalParameter.fromJson(json);

  factory SwidDefaultFormalParameter.clone({
    required final SwidDefaultFormalParameter swidDefaultFormalParameter,
    final SwidNullabilitySuffix? nullabilitySuffix,
    final String? originalPackagePath,
    final SwidType? staticType,
    final SwidStaticConst? value,
    final String? defaultValueCode,
    final SwidType? element,
  }) =>
      SwidDefaultFormalParameter(
        nullabilitySuffix:
            nullabilitySuffix ?? swidDefaultFormalParameter.nullabilitySuffix,
        originalPackagePath: originalPackagePath ??
            swidDefaultFormalParameter.originalPackagePath,
        staticType: staticType ?? swidDefaultFormalParameter.staticType,
        value: value ?? swidDefaultFormalParameter.value,
        defaultValueCode:
            defaultValueCode ?? swidDefaultFormalParameter.defaultValueCode,
        element: element ?? swidDefaultFormalParameter.element,
      );

  @override
  late final Iterable<Iterable<int>> hashableParts = (() sync* {
    yield [
      nullabilitySuffix.index,
    ];
    yield* originalPackagePath.hashableParts;
    yield* staticType.hashKey.hashableParts;
    yield* value.hashKey.hashableParts;
    yield* defaultValueCode.hashableParts;
    yield* element?.hashKey.hashableParts ?? [];
  })();

  @override
  String get name => staticType.name;

  @override
  SwidDeclarationModifiers get declarationModifiers =>
      staticType.declarationModifiers;

  @override
  SwidDefaultFormalParameter clone({
    final SwidNullabilitySuffix? nullabilitySuffix,
    final String? originalPackagePath,
    final SwidType? staticType,
    final SwidStaticConst? value,
    final String? defaultValueCode,
    final SwidType? element,
  }) =>
      SwidDefaultFormalParameter.clone(
        swidDefaultFormalParameter: this,
        nullabilitySuffix: nullabilitySuffix,
        originalPackagePath: originalPackagePath,
        staticType: staticType,
        value: value,
        defaultValueCode: defaultValueCode,
        element: element,
      );
}
