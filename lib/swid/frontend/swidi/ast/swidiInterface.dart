import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiReferenceDeclarationPrefix.dart';

part 'swidiInterface.freezed.dart';

@freezed
abstract class SwidiInterface with _$SwidiInterface {
  const factory SwidiInterface({
    @required String name,
    @required SwidiLibraryScopePrefix libraryScopePrefix,
    @required SwidiReferenceDeclarationPrefix referenceDeclarationPrefix,
    @required SwidiNullabilitySuffix nullabilitySuffix,
  }) = _$SwidiInterfaceCtor;

  factory SwidiInterface.clone({
    @required SwidiInterface swidiInterface,
    String name,
    SwidiLibraryScopePrefix libraryScopePrefix,
    SwidiReferenceDeclarationPrefix referenceDeclarationPrefix,
    SwidiNullabilitySuffix nullabilitySuffix,
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
      );
}
