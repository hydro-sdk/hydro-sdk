import 'package:analyzer/dart/ast/ast.dart'
    show
        ClassDeclaration,
        FieldDeclaration,
        VariableDeclaration,
        VariableDeclarationList,
        TypeParameterList,
        ClassTypeAlias,
        MixinDeclaration,
        SimpleIdentifier,
        ImplementsClause,
        WithClause,
        TypeName;

import 'package:analyzer/dart/ast/syntactic_entity.dart';
import 'package:analyzer/dart/element/element.dart' show ClassElement;
import 'package:analyzer/dart/element/type.dart' show InterfaceType;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/util/narrowModifierProducer.dart';

import 'package:analyzer/src/dart/ast/ast.dart'
    show ConstructorDeclarationImpl, MethodDeclarationImpl;

part 'dartClass.freezed.dart';

@freezed
abstract class DartClassOrMixinOrClassTypAliasDeclaration
    with _$DartClassOrMixinOrClassTypAliasDeclaration {
  const factory DartClassOrMixinOrClassTypAliasDeclaration.fromClassDeclaration({
    @required ClassDeclaration classDeclaration,
  }) = _$DartClassOrMixinOrClassTypAliasDeclarationFromClassDeclaration;

  const factory DartClassOrMixinOrClassTypAliasDeclaration.fromMixinDeclaration({
    @required MixinDeclaration mixinDeclaration,
  }) = _$DartClassOrMixinOrClassTypAliasDeclarationFromMixinDeclaration;

  const factory DartClassOrMixinOrClassTypAliasDeclaration.fromClassTypeAlias({
    @required ClassTypeAlias classTypeAlias,
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

  TypeName get superClass => this.when(
        fromClassDeclaration: (val) => val.extendsClause?.superclass,
        fromMixinDeclaration: (_) => null,
        fromClassTypeAlias: (val) => val.superclass,
      );

  ImplementsClause get implementsClause => this.when(
        fromClassDeclaration: (val) => val.implementsClause,
        fromMixinDeclaration: (val) => val.implementsClause,
        fromClassTypeAlias: (val) => val.implementsClause,
      );

  WithClause get withClause => this.when(
        fromClassDeclaration: (val) => val.withClause,
        fromMixinDeclaration: (_) => null,
        fromClassTypeAlias: (val) => val.withClause,
      );

  ClassElement get declaredElement => this.when(
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

class DartClass {
  static SwidClass swidClassFromDartClassOrMixinOrClassTypAliasDeclaration({
    @required
        DartClassOrMixinOrClassTypAliasDeclaration
            dartClassOrMixinOrClassTypAliasDeclaration,
  }) {
    final List<ConstructorDeclarationImpl> constructors =
        dartClassOrMixinOrClassTypAliasDeclaration.childEntities
            .where((x) => x is ConstructorDeclarationImpl)
            .toList()
            .cast<ConstructorDeclarationImpl>()
            .where((x) => !x.declaredElement.hasProtected)
            .where((x) => x.declaredElement.name.isNotEmpty
                ? x.declaredElement.name[0] != "_"
                : true)
            .toList();
    var constructorDeclarationImpl = constructors.firstWhere(
        (x) => x.factoryKeyword == null && x.name == null,
        orElse: () => null);

    if (constructorDeclarationImpl == null) {
      constructorDeclarationImpl =
          constructors.firstWhere((x) => x.name == null, orElse: () => null);
    }

    var methods = dartClassOrMixinOrClassTypAliasDeclaration.childEntities
        .where((x) => x is MethodDeclarationImpl)
        .toList()
        .cast<MethodDeclarationImpl>()
        .where((x) => x.name.name[0] != "_")
        .toList()
        .cast<MethodDeclarationImpl>()
        .map((x) => SwidFunctionType.fromFunctionType(
            functionType: x.declaredElement.type,
            swidDeclarationModifiers: narrowModifierProducer(
                element: x.declaredElement,
                onExecutablElement: (val) =>
                    SwidDeclarationModifiers.fromExecutableElement(
                        executableElement: val),
                onPropertyAccessorElement: (val) =>
                    SwidDeclarationModifiers.fromPropertyAccessorElement(
                        propertyAccessorElement: val))))
        .toList()
        .cast<SwidFunctionType>();
    return SwidClass(
        name: dartClassOrMixinOrClassTypAliasDeclaration.name.name,
        isMixin: dartClassOrMixinOrClassTypAliasDeclaration.isMixin,
        nullabilitySuffix: SwidNullabilitySuffix.none,
        swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
        originalPackagePath: dartClassOrMixinOrClassTypAliasDeclaration
                .declaredElement?.librarySource?.uri
                ?.toString() ??
            "",
        constructorType: constructorDeclarationImpl != null
            ? SwidFunctionType.clone(
                swidFunctionType: SwidFunctionType.fromFunctionType(
                    swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
                    functionType:
                        constructorDeclarationImpl.declaredElement.type),
                isFactory: constructorDeclarationImpl.factoryKeyword != null,
              )
            : null,
        factoryConstructors: constructors
            .where((x) => x.name != null && x.name.name[0] != "_")
            .toList()
            .map((x) => SwidFunctionType.clone(
                  swidFunctionType: SwidFunctionType.fromFunctionType(
                      functionType: x.declaredElement.type,
                      name: x.name.name,
                      swidDeclarationModifiers:
                          SwidDeclarationModifiers.empty()),
                  isFactory: true,
                ))
            .toList(),
        methods:
            methods.where((x) => !x.swidDeclarationModifiers.isStatic).toList(),
        staticMethods:
            methods.where((x) => x.swidDeclarationModifiers.isStatic).toList(),
        mixedInClasses: dartClassOrMixinOrClassTypAliasDeclaration.withClause != null
            ? dartClassOrMixinOrClassTypAliasDeclaration.withClause.mixinTypes
                .map((x) => SwidClass.fromInterfaceType(interfaceType: x.type))
                .toList()
            : [],
        extendedClass: dartClassOrMixinOrClassTypAliasDeclaration.superClass != null && dartClassOrMixinOrClassTypAliasDeclaration.superClass.type is InterfaceType
            ? SwidClass.fromInterfaceType(
                interfaceType:
                    dartClassOrMixinOrClassTypAliasDeclaration.superClass.type)
            : null,
        implementedClasses: dartClassOrMixinOrClassTypAliasDeclaration.implementsClause != null
            ? dartClassOrMixinOrClassTypAliasDeclaration.implementsClause.interfaces
                .where((x) => x.type is InterfaceType)
                .map((x) => SwidClass.fromInterfaceType(interfaceType: x.type))
                .toList()
            : [],
        staticConstFieldDeclarations: dartClassOrMixinOrClassTypAliasDeclaration.childEntities
            .where((x) => x is FieldDeclaration)
            .toList()
            .cast<FieldDeclaration>()
            .map((x) {
          if (x.isStatic) {
            var declarationList =
                (x.childEntities.firstWhere((k) => k is VariableDeclarationList)
                    as VariableDeclarationList);
            if (declarationList.isConst) {
              VariableDeclaration declaration = declarationList.childEntities
                  .firstWhere((x) => x is VariableDeclaration);
              if (declaration.isConst &&
                  declaration.declaredElement.isConst &&
                  declaration.declaredElement.isStatic) {
                return SwidStaticConstFieldDeclaration
                    .fromVariableDeclarationList(
                        variableDeclarationList: x.childEntities
                            .firstWhere((k) => k is VariableDeclarationList));
              }
            }
          }
        }).toList()
              ..removeWhere((x) => x == null),
        instanceFieldDeclarations: Map.fromEntries(
          dartClassOrMixinOrClassTypAliasDeclaration.childEntities
              .where((x) => x is FieldDeclaration)
              .toList()
              .cast<FieldDeclaration>()
              .map((x) {
            if (!x.isStatic) {
              var declarationList = (x.childEntities
                      .firstWhere((k) => k is VariableDeclarationList)
                  as VariableDeclarationList);
              if (!declarationList.isConst) {
                VariableDeclaration declaration = declarationList.childEntities
                    .firstWhere((x) => x is VariableDeclaration);
                if (!declaration.isConst &&
                    !declaration.declaredElement.isConst &&
                    !declaration.declaredElement.isStatic &&
                    declaration.declaredElement.isPublic) {
                  if (declaration.declaredElement.type is InterfaceType) {
                    return MapEntry(
                        declaration.declaredElement.displayName,
                        SwidType.fromSwidInterface(
                            swidInterface: SwidInterface.fromInterface(
                                interfaceType:
                                    declaration.declaredElement.type)));
                  }
                }
              }
            }
          }).toList()
                ..removeWhere((x) => x == null),
        ),
        typeFormals: ((TypeParameterList typeParameterList) => typeParameterList != null
            ? typeParameterList.typeParameters
                .map((x) => SwidTypeFormal.fromTypeParameter(
                      typeParameter: x,
                    ))
                .toList()
            : <SwidTypeFormal>[])(dartClassOrMixinOrClassTypAliasDeclaration.childEntities.firstWhere(
          (x) => x is TypeParameterList,
          orElse: () => null,
        )));
  }
}
