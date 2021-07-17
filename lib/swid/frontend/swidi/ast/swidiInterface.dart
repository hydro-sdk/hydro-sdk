import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiReferenceDeclarationPrefix.dart';

part 'swidiInterface.freezed.dart';

@freezed
class SwidiInterface with _$SwidiInterface {
  const SwidiInterface._();

  const factory SwidiInterface({
    required String name,
    required SwidiLibraryScopePrefix libraryScopePrefix,
    required SwidiReferenceDeclarationPrefix referenceDeclarationPrefix,
    required SwidiNullabilitySuffix nullabilitySuffix,
    required List<SwidiInterface> typeArguments,
  }) = _$SwidiInterfaceCtor;

  static const empty = const SwidiInterface(
    name: "",
    libraryScopePrefix: SwidiLibraryScopePrefix.empty,
    referenceDeclarationPrefix: SwidiReferenceDeclarationPrefix.empty,
    nullabilitySuffix: SwidiNullabilitySuffix.none,
    typeArguments: [],
  );

  factory SwidiInterface.clone({
    required SwidiInterface swidiInterface,
    String? name,
    SwidiLibraryScopePrefix? libraryScopePrefix,
    SwidiReferenceDeclarationPrefix? referenceDeclarationPrefix,
    SwidiNullabilitySuffix? nullabilitySuffix,
    List<SwidiInterface>? typeArguments,
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
                .map((x) => SwidiInterface.clone(
                      swidiInterface: x,
                    ))
                .toList(),
      );
}
