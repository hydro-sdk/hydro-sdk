import 'package:analyzer/dart/ast/ast.dart'
    show
        FieldDeclaration,
        VariableDeclaration,
        VariableDeclarationList,
        TypeParameterList;

import 'package:analyzer/dart/element/type.dart' show InterfaceType;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/frontend/dart/dartClassOrMixinOrClassTypAliasDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/dart/narrowModifierProducer.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidClassFromInterfaceType.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidFunctionTypeFromFunctionType.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidInterfaceFromInterface.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidStaticConstFieldDeclarationFromVariableDeclarationList.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidTypeFormalFromTypeParameter.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';

import 'package:analyzer/src/dart/ast/ast.dart'
    show ConstructorDeclarationImpl, MethodDeclarationImpl;

SwidClass swidClassFromDartClassOrMixinOrClassTypAliasDeclaration({
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
      .map((x) => swidFunctionTypeFromFunctionType(
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
      originalPackagePath:
          dartClassOrMixinOrClassTypAliasDeclaration.declaredElement?.librarySource?.uri?.toString() ??
              "",
      constructorType: constructorDeclarationImpl != null
          ? SwidFunctionType.clone(
              swidFunctionType: swidFunctionTypeFromFunctionType(
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
                swidFunctionType: swidFunctionTypeFromFunctionType(
                    functionType: x.declaredElement.type,
                    name: x.name.name,
                    swidDeclarationModifiers: SwidDeclarationModifiers.empty()),
                isFactory: true,
              ))
          .toList(),
      methods:
          methods.where((x) => !x.swidDeclarationModifiers.isStatic).toList(),
      staticMethods:
          methods.where((x) => x.swidDeclarationModifiers.isStatic).toList(),
      mixedInClasses: dartClassOrMixinOrClassTypAliasDeclaration.withClause != null
          ? dartClassOrMixinOrClassTypAliasDeclaration.withClause.mixinTypes
              .map((x) => swidClassFromInterfaceType(interfaceType: x.type))
              .toList()
          : [],
      extendedClass: dartClassOrMixinOrClassTypAliasDeclaration.superClass != null &&
              dartClassOrMixinOrClassTypAliasDeclaration.superClass.type
                  is InterfaceType
          ? swidClassFromInterfaceType(
              interfaceType:
                  dartClassOrMixinOrClassTypAliasDeclaration.superClass.type)
          : null,
      implementedClasses: dartClassOrMixinOrClassTypAliasDeclaration.implementsClause != null
          ? dartClassOrMixinOrClassTypAliasDeclaration.implementsClause.interfaces
              .where((x) => x.type is InterfaceType)
              .map((x) => swidClassFromInterfaceType(interfaceType: x.type))
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
              return swidStaticConstFieldDeclarationFromVariableDeclarationList(
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
            var declarationList =
                (x.childEntities.firstWhere((k) => k is VariableDeclarationList)
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
                          swidInterface: swidInterfaceFromInterface(
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
              .map((x) => swidTypeFormalFromTypeParameter(
                    typeParameter: x,
                  ))
              .toList()
          : <SwidTypeFormal>[])(dartClassOrMixinOrClassTypAliasDeclaration.childEntities.firstWhere(
        (x) => x is TypeParameterList,
        orElse: () => null,
      )));
}
