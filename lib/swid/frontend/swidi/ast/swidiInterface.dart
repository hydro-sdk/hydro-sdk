import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiAnnotation.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiReferenceDeclarationPrefix.dart';

part 'swidiInterface.freezed.dart';

@freezed
class SwidiInterface with _$SwidiInterface {
  const SwidiInterface._();

  const factory SwidiInterface({
    required final String name,
    required final SwidiLibraryScopePrefix libraryScopePrefix,
    required final SwidiReferenceDeclarationPrefix referenceDeclarationPrefix,
    required final SwidiNullabilitySuffix nullabilitySuffix,
    required final List<SwidiInterface> typeArguments,
    required final List<SwidiAnnotation> annotations,
  }) = _$SwidiInterfaceCtor;

  static const empty = const SwidiInterface(
    name: "",
    libraryScopePrefix: SwidiLibraryScopePrefix.empty,
    referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix.empty,
    nullabilitySuffix: SwidiNullabilitySuffix.none,
    typeArguments: [],
    annotations: [],
  );

  factory SwidiInterface.clone({
    required final SwidiInterface swidiInterface,
    String? name,
    SwidiLibraryScopePrefix? libraryScopePrefix,
    SwidiReferenceDeclarationPrefix? referenceDeclarationPrefix,
    SwidiNullabilitySuffix? nullabilitySuffix,
    List<SwidiInterface>? typeArguments,
    List<SwidiAnnotation>? annotations,
  }) =>
      SwidiInterface(
        name: name ?? swidiInterface.name,
        libraryScopePrefix: libraryScopePrefix ??
            SwidiLibraryScopePrefix.clone(
              swidiLibraryScopePrefix: swidiInterface.libraryScopePrefix,
            ),
        referenceDeclarationPrefix: referenceDeclarationPrefix ??
            SwidiReferenceDeclarationPrefix.clone(
              swidiReferenceDeclarationPrefix:
                  swidiInterface.referenceDeclarationPrefix,
            ),
        nullabilitySuffix:
            nullabilitySuffix ?? swidiInterface.nullabilitySuffix,
        typeArguments: typeArguments ??
            swidiInterface.typeArguments
                .map(
                  (x) => SwidiInterface.clone(
                    swidiInterface: x,
                  ),
                )
                .toList(),
        annotations: annotations ??
            swidiInterface.annotations
                .map(
                  (x) => SwidiAnnotation.clone(
                    swidiAnnotation: x,
                  ),
                )
                .toList(),
      );
}
