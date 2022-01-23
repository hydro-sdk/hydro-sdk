import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/swidi/ast/iShortHandOverride.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiConst.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiFunctionDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/swidi/ast/swidiLibraryScopePrefix.dart';
import 'package:hydro_sdk/swid/util/hashComparableMixin.dart';
import 'package:hydro_sdk/swid/util/hashKeyMixin.dart';
import 'package:hydro_sdk/swid/util/iCopyable.dart';

part 'swidiClass.freezed.dart';

@freezed
class SwidiClass
    with _$SwidiClass, HashKeyMixin<SwidiClass>, HashComparableMixin<SwidiClass>
    implements
        ICopyable<SwidiClass, $SwidiClassCopyWith<SwidiClass>>,
        IShortHandOverride<SwidiClass> {
  SwidiClass._();

  factory SwidiClass({
    required String name,
    required SwidiLibraryScopePrefix libraryScopePrefix,
    required List<SwidiFunctionDeclaration> methods,
    required List<SwidiFunctionDeclaration> staticMethods,
    required final SwidiConst shortHandOverride,
  }) = _$SwidiClassCtor;

  factory SwidiClass._clone({
    required final SwidiClass swidiClass,
    final String? name,
    final SwidiLibraryScopePrefix? libraryScopePrefix,
    final List<SwidiFunctionDeclaration>? methods,
    final List<SwidiFunctionDeclaration>? staticMethods,
    final SwidiConst? shortHandOverride,
  }) =>
      SwidiClass(
        name: name ?? swidiClass.name,
        libraryScopePrefix:
            libraryScopePrefix ?? swidiClass.libraryScopePrefix.clone(),
        methods: methods ?? swidiClass.methods,
        staticMethods: staticMethods ?? swidiClass.staticMethods,
        shortHandOverride: shortHandOverride ?? swidiClass.shortHandOverride,
      );

  @override
  Iterable<Iterable<int>> get hashableParts sync* {
    yield* name.hashableParts;
    yield* libraryScopePrefix.hashKey.hashableParts;
    yield* methods.hashableParts;
    yield* staticMethods.hashableParts;
    ;
  }

  @override
  SwidiClass clone({
    final String? name,
    final SwidiLibraryScopePrefix? libraryScopePrefix,
    final List<SwidiFunctionDeclaration>? methods,
    final List<SwidiFunctionDeclaration>? staticMethods,
    final SwidiConst? shortHandOverride,
  }) =>
      SwidiClass._clone(
        swidiClass: this,
        name: name,
        libraryScopePrefix: libraryScopePrefix,
        methods: methods,
        staticMethods: staticMethods,
        shortHandOverride: shortHandOverride,
      );
}
