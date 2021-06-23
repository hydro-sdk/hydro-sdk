import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';

part 'swidiClass.freezed.dart';

@freezed
class SwidiClass with _$SwidiClass {
  const factory SwidiClass({
    required String name,
    required SwidiLibraryScopePrefix libraryScopePrefix,
    required List<SwidiFunctionDeclaration> methods,
  }) = _$SwidiClassCtor;

  factory SwidiClass.clone({
    required SwidiClass swidiClass,
    String? name,
    SwidiLibraryScopePrefix? libraryScopePrefix,
    List<SwidiFunctionDeclaration>? methods,
  }) =>
      SwidiClass(
        name: name ?? swidiClass.name,
        libraryScopePrefix: libraryScopePrefix ??
            SwidiLibraryScopePrefix.clone(
              swidiLibraryScopePrefix: swidiClass.libraryScopePrefix,
            ),
        methods: methods ??
            List.from(
              swidiClass.methods
                  .map(
                    (x) => SwidiFunctionDeclaration.clone(
                      swidiFunctionDeclaration: x,
                    ),
                  )
                  .toList(),
            ),
      );
}
