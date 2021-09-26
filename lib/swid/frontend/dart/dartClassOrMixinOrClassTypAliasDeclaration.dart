import 'package:analyzer/dart/ast/ast.dart'
    show
        ClassDeclaration,
        ClassTypeAlias,
        MixinDeclaration,
        SimpleIdentifier,
        ImplementsClause,
        WithClause,
        TypeName;

import 'package:analyzer/dart/ast/syntactic_entity.dart';
import 'package:analyzer/dart/element/element.dart' show ClassElement;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dartClassOrMixinOrClassTypAliasDeclaration.freezed.dart';

@freezed
class DartClassOrMixinOrClassTypAliasDeclaration
    with _$DartClassOrMixinOrClassTypAliasDeclaration {
  const factory DartClassOrMixinOrClassTypAliasDeclaration.fromClassDeclaration({
    required final ClassDeclaration classDeclaration,
  }) = _$DartClassOrMixinOrClassTypAliasDeclarationFromClassDeclaration;

  const factory DartClassOrMixinOrClassTypAliasDeclaration.fromMixinDeclaration({
    required final MixinDeclaration mixinDeclaration,
  }) = _$DartClassOrMixinOrClassTypAliasDeclarationFromMixinDeclaration;

  const factory DartClassOrMixinOrClassTypAliasDeclaration.fromClassTypeAlias({
    required final ClassTypeAlias classTypeAlias,
  }) = _$DartClassOrMixinOrClassTypAliasDeclarationFromClassTypeAlias;
}

extension DartClassOrMixinOrClassTypAliasDeclarationMethods
    on DartClassOrMixinOrClassTypAliasDeclaration {
  Iterable<SyntacticEntity> get childEntities => this.when(
        fromClassDeclaration: (val) => val.childEntities,
        fromMixinDeclaration: (val) => val.childEntities,
        fromClassTypeAlias: (val) => val.childEntities,
      );

  SimpleIdentifier get name => this.when(
        fromClassDeclaration: (val) => val.name,
        fromMixinDeclaration: (val) => val.name,
        fromClassTypeAlias: (val) => val.name,
      );

  TypeName? get superClass => this.when(
        fromClassDeclaration: (val) => val.extendsClause?.superclass,
        fromMixinDeclaration: (_) => null,
        fromClassTypeAlias: (val) => val.superclass,
      );

  ImplementsClause? get implementsClause => this.when(
        fromClassDeclaration: (val) => val.implementsClause,
        fromMixinDeclaration: (val) => val.implementsClause,
        fromClassTypeAlias: (val) => val.implementsClause,
      );

  WithClause? get withClause => this.when(
        fromClassDeclaration: (val) => val.withClause,
        fromMixinDeclaration: (_) => null,
        fromClassTypeAlias: (val) => val.withClause,
      );

  ClassElement? get declaredElement => this.when(
        fromClassDeclaration: (val) => val.declaredElement,
        fromMixinDeclaration: (val) => val.declaredElement,
        fromClassTypeAlias: (val) => val.declaredElement,
      );

  bool get isMixin => this.when(
        fromClassDeclaration: (_) => false,
        fromMixinDeclaration: (_) => true,
        fromClassTypeAlias: (_) => false,
      );
}
