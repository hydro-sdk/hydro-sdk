import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidiClass.freezed.dart';

@freezed
class SwidiClass
    with _$SwidiClass, HashKeyMixin<SwidiClass>, HashComparableMixin<SwidiClass>
    implements ICopyable<SwidiClass, $SwidiClassCopyWith<SwidiClass>> {
  SwidiClass._();

  factory SwidiClass({
    required String name,
    required SwidiLibraryScopePrefix libraryScopePrefix,
    required List<SwidiFunctionDeclaration> methods,
    required List<SwidiFunctionDeclaration> staticMethods,
  }) = _$SwidiClassCtor;

  factory SwidiClass._clone({
    required final SwidiClass swidiClass,
    final String? name,
    final SwidiLibraryScopePrefix? libraryScopePrefix,
    final List<SwidiFunctionDeclaration>? methods,
    final List<SwidiFunctionDeclaration>? staticMethods,
  }) =>
      SwidiClass(
        name: name ?? swidiClass.name,
        libraryScopePrefix:
            libraryScopePrefix ?? swidiClass.libraryScopePrefix.clone(),
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

  @override
  List<int> get hashableParts => [
        ...name.hashableParts,
        ...libraryScopePrefix.hashableParts,
        ...methods.hashableParts,
        ...staticMethods.hashableParts,
      ];

  @override
  SwidiClass clone({
    final String? name,
    final SwidiLibraryScopePrefix? libraryScopePrefix,
    final List<SwidiFunctionDeclaration>? methods,
    final List<SwidiFunctionDeclaration>? staticMethods,
  }) =>
      SwidiClass._clone(
        swidiClass: this,
        name: name,
        libraryScopePrefix: libraryScopePrefix,
        methods: methods,
        staticMethods: staticMethods,
      );
}
