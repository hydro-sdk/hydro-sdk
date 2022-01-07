import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/iSwidiType.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiAnnotation.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiReferenceDeclarationPrefix.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidiInterface.freezed.dart';

@freezed
class SwidiInterface
    with
        _$SwidiInterface,
        HashKeyMixin<SwidiInterface>,
        HashComparableMixin<SwidiInterface>
    implements
        ISwidiType<SwidiInterface>,
        ICopyable<SwidiInterface, $SwidiInterfaceCopyWith<SwidiInterface>> {
  SwidiInterface._();

  factory SwidiInterface({
    required final String name,
    required final SwidiLibraryScopePrefix libraryScopePrefix,
    required final SwidiReferenceDeclarationPrefix referenceDeclarationPrefix,
    required final SwidiNullabilitySuffix nullabilitySuffix,
    required final List<SwidiInterface> typeArguments,
    required final List<SwidiAnnotation> annotations,
  }) = _$SwidiInterfaceCtor;

  static final empty = SwidiInterface(
    name: "",
    libraryScopePrefix: SwidiLibraryScopePrefix.empty,
    referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix.empty,
    nullabilitySuffix: SwidiNullabilitySuffix.none,
    typeArguments: [],
    annotations: [],
  );

  factory SwidiInterface._clone({
    required final SwidiInterface swidiInterface,
    final String? name,
    final SwidiLibraryScopePrefix? libraryScopePrefix,
    final SwidiReferenceDeclarationPrefix? referenceDeclarationPrefix,
    final SwidiNullabilitySuffix? nullabilitySuffix,
    final List<SwidiInterface>? typeArguments,
    final List<SwidiAnnotation>? annotations,
  }) =>
      SwidiInterface(
        name: name ?? swidiInterface.name,
        libraryScopePrefix:
            libraryScopePrefix ?? swidiInterface.libraryScopePrefix.clone(),
        referenceDeclarationPrefix: referenceDeclarationPrefix ??
            swidiInterface.referenceDeclarationPrefix.clone(),
        nullabilitySuffix:
            nullabilitySuffix ?? swidiInterface.nullabilitySuffix,
        typeArguments: typeArguments ??
            swidiInterface.typeArguments
                .map(
                  (x) => x.clone(),
                )
                .toList(),
        annotations: annotations ??
            swidiInterface.annotations
                .map(
                  (x) => x.clone(),
                )
                .toList(),
      );

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* name.hashableParts;
    yield* libraryScopePrefix.hashKey.hashableParts;
    yield* referenceDeclarationPrefix.hashKey.hashableParts;
    yield [
      nullabilitySuffix.index,
    ];
    yield* typeArguments.hashableParts;
    yield* annotations.hashableParts;
  }

  @override
  SwidiInterface clone({
    final String? name,
    final SwidiLibraryScopePrefix? libraryScopePrefix,
    final SwidiReferenceDeclarationPrefix? referenceDeclarationPrefix,
    final SwidiNullabilitySuffix? nullabilitySuffix,
    final List<SwidiInterface>? typeArguments,
    final List<SwidiAnnotation>? annotations,
  }) =>
      SwidiInterface._clone(
        swidiInterface: this,
        name: name,
        libraryScopePrefix: libraryScopePrefix,
        referenceDeclarationPrefix: referenceDeclarationPrefix,
        nullabilitySuffix: nullabilitySuffix,
        typeArguments: typeArguments,
        annotations: annotations,
      );
}
