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
    required List<SwidiFunctionDeclaration> staticMethods,
  }) = _$SwidiClassCtor;

  factory SwidiClass.clone({
    required SwidiClass swidiClass,
    String? name,
    SwidiLibraryScopePrefix? libraryScopePrefix,
    List<SwidiFunctionDeclaration>? methods,
    List<SwidiFunctionDeclaration>? staticMethods,
  }) =>
      SwidiClass(
        name: name ?? swidiClass.name,
        libraryScopePrefix: libraryScopePrefix ??
            swidiClass.libraryScopePrefix.clone(),
        methods: methods ??
            List.from(
              swidiClass.methods
                  .map(
                    (x) => x.clone(),
                  )
                  .toList(),
            ),
        staticMethods: staticMethods ??
            List.from(
              swidiClass.staticMethods
                  .map(
                    (x) => x.clone(),
                  )
                  .toList(),
            ),
      );
}
