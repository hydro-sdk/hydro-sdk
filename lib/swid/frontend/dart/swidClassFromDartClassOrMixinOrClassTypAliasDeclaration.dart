import 'package:analyzer/dart/ast/ast.dart'
    show
        FieldDeclaration,
        VariableDeclaration,
        VariableDeclarationList,
        TypeParameterList;

import 'package:analyzer/dart/element/element.dart' show ConstructorElement;
import 'package:analyzer/dart/element/type.dart' show InterfaceType;
import 'package:collection/collection.dart' show IterableExtension;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:hydro_sdk/swid/frontend/dart/dartClassOrMixinOrClassTypAliasDeclaration.dart';
import 'package:hydro_sdk/swid/frontend/dart/narrowModifierProducer.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidClassFromInterfaceType.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidDeclarationModifiersFromExecutableElement.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidDeclarationModifiersFromPropertyAccessorElement.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidFunctionTypeFromFunctionType.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidInterfaceFromInterface.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidStaticConstFieldDeclarationFromVariableDeclarationList.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidTypeFormalFromTypeParameter.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/ir/swidType.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';

import 'package:analyzer/src/dart/ast/ast.dart'
    show ConstructorDeclarationImpl, MethodDeclarationImpl;

SwidClass swidClassFromDartClassOrMixinOrClassTypAliasDeclaration({
  required final DartClassOrMixinOrClassTypAliasDeclaration
      dartClassOrMixinOrClassTypAliasDeclaration,
  required final bool buildElements,
}) {
  final List<ConstructorDeclarationImpl> constructors =
      dartClassOrMixinOrClassTypAliasDeclaration.childEntities
          .where(
            (x) => x is ConstructorDeclarationImpl,
          )
          .toList()
          .cast<ConstructorDeclarationImpl>()
          .where(
            (x) => !x.declaredElement!.hasProtected,
          )
          .where(
            (x) => x.declaredElement!.name.isNotEmpty
                ? x.declaredElement!.name[0] != "_"
                : true,
          )
          .toList();
  var constructorDeclarationImpl = constructors.firstWhereOrNull(
    (x) => x.factoryKeyword == null && x.name == null,
  );

  if (constructorDeclarationImpl == null) {
    constructorDeclarationImpl = constructors.firstWhereOrNull(
      (x) => x.name == null,
    );
  }

  var methods = dartClassOrMixinOrClassTypAliasDeclaration.childEntities
      .where(
        (x) => x is MethodDeclarationImpl,
      )
      .toList()
      .cast<MethodDeclarationImpl>()
      .where(
        (x) => x.name.name[0] != "_",
      )
      .toList()
      .cast<MethodDeclarationImpl>()
      .map(
        (x) => swidFunctionTypeFromFunctionType(
          functionType: x.declaredElement!.type,
          declarationModifiers: narrowModifierProducer(
            element: x.declaredElement,
            onExecutablElement: (val) =>
                swidDeclarationModifiersFromExecutableElement(
                    executableElement: val),
            onPropertyAccessorElement: (val) =>
                swidDeclarationModifiersFromPropertyAccessorElement(
              propertyAccessorElement: val,
            ),
          )!,
          buildElements: buildElements,
        ),
      )
      .toList()
      .cast<SwidFunctionType>();
  return SwidClass(
    name: dartClassOrMixinOrClassTypAliasDeclaration.name.name,
    isMixin: dartClassOrMixinOrClassTypAliasDeclaration.isMixin,
    nullabilitySuffix: SwidNullabilitySuffix.none,
    declarationModifiers: SwidDeclarationModifiers.empty(),
    originalPackagePath: dartClassOrMixinOrClassTypAliasDeclaration
            .declaredElement?.librarySource.uri
            .toString() ??
        "",
    constructorType: constructorDeclarationImpl != null
        ? SwidFunctionType.clone(
            swidFunctionType: swidFunctionTypeFromFunctionType(
              buildElements: buildElements,
              declarationModifiers: SwidDeclarationModifiers.empty(),
              functionType: constructorDeclarationImpl.declaredElement!.type,
            ),
            isFactory: constructorDeclarationImpl.factoryKeyword != null,
          )
        : dartClassOrMixinOrClassTypAliasDeclaration.when(
            fromClassDeclaration: (val) => (({
              required final ConstructorElement? constructorElement,
            }) =>
                constructorElement != null
                    ? swidFunctionTypeFromFunctionType(
                        buildElements: buildElements,
                        functionType: constructorElement.type,
                        declarationModifiers: SwidDeclarationModifiers.empty(),
                      )
                    : null)(
              constructorElement:
                  val.declaredElement?.constructors.firstWhereOrNull(
                (x) => x.name == "",
              ),
            ),
            fromMixinDeclaration: (_) => null,
            fromClassTypeAlias: (_) => null,
          ),
    generativeConstructors: constructors
        .where(
          (x) => x.name != null,
        )
        .where(
          (x) => x.name!.name[0] != "_",
        )
        .where(
          (x) => x.factoryKeyword == null,
        )
        .toList()
        .map(
          (x) => SwidFunctionType.clone(
            swidFunctionType: swidFunctionTypeFromFunctionType(
              buildElements: buildElements,
              functionType: x.declaredElement!.type,
              name: x.name!.name,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
            isFactory: false,
          ),
        )
        .toList(),
    factoryConstructors: constructors
        .where(
          (x) => x.name != null,
        )
        .where(
          (x) => x.name!.name[0] != "_",
        )
        .where(
          (x) => x.factoryKeyword != null,
        )
        .toList()
        .map(
          (x) => SwidFunctionType.clone(
            swidFunctionType: swidFunctionTypeFromFunctionType(
              buildElements: buildElements,
              functionType: x.declaredElement!.type,
              name: x.name!.name,
              declarationModifiers: SwidDeclarationModifiers.empty(),
            ),
            isFactory: true,
          ),
        )
        .toList(),
    methods: methods.where((x) => !x.declarationModifiers.isStatic).toList(),
    staticMethods:
        methods.where((x) => x.declarationModifiers.isStatic).toList(),
    mixedInClasses:
        dartClassOrMixinOrClassTypAliasDeclaration.withClause != null
            ? dartClassOrMixinOrClassTypAliasDeclaration.withClause!.mixinTypes
                .map(
                  (x) => swidClassFromInterfaceType(
                    buildElements: buildElements,
                    interfaceType: x.type as InterfaceType,
                  ),
                )
                .toList()
            : [],
    extendedClass:
        dartClassOrMixinOrClassTypAliasDeclaration.superClass != null &&
                dartClassOrMixinOrClassTypAliasDeclaration.superClass!.type
                    is InterfaceType
            ? swidClassFromInterfaceType(
                buildElements: buildElements,
                interfaceType: dartClassOrMixinOrClassTypAliasDeclaration
                    .superClass!.type as InterfaceType,
              )
            : null,
    implementedClasses:
        dartClassOrMixinOrClassTypAliasDeclaration.implementsClause != null
            ? dartClassOrMixinOrClassTypAliasDeclaration
                .implementsClause!.interfaces
                .where(
                  (x) => x.type is InterfaceType,
                )
                .map(
                  (x) => swidClassFromInterfaceType(
                    buildElements: buildElements,
                    interfaceType: x.type as InterfaceType,
                  ),
                )
                .toList()
            : [],
    staticConstFieldDeclarations: (dartClassOrMixinOrClassTypAliasDeclaration
            .childEntities
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
                  .firstWhere((x) => x is VariableDeclaration)
              as VariableDeclaration;
          if (declaration.isConst &&
              declaration.declaredElement!.isConst &&
              declaration.declaredElement!.isStatic) {
            return swidStaticConstFieldDeclarationFromVariableDeclarationList(
              variableDeclarationList: x.childEntities
                      .firstWhere((k) => k is VariableDeclarationList)
                  as VariableDeclarationList,
              buildElements: buildElements,
            );
          }
        }
      }
    }).toList()
              ..removeWhere(
                (x) => x == null,
              ))
        .cast<SwidStaticConstFieldDeclaration>(),
    instanceFieldDeclarations: Map.fromEntries(
      dartClassOrMixinOrClassTypAliasDeclaration.childEntities
          .where(
            (x) => x is FieldDeclaration,
          )
          .toList()
          .cast<FieldDeclaration>()
          .map(
            (x) {
              if (!x.isStatic) {
                var declarationList = (x.childEntities.firstWhere(
                  (k) => k is VariableDeclarationList,
                ) as VariableDeclarationList);
                if (!declarationList.isConst) {
                  VariableDeclaration declaration =
                      declarationList.childEntities.firstWhere(
                    (x) => x is VariableDeclaration,
                  ) as VariableDeclaration;
                  if (!declaration.isConst &&
                      !declaration.declaredElement!.isConst &&
                      !declaration.declaredElement!.isStatic &&
                      declaration.declaredElement!.isPublic) {
                    if (declaration.declaredElement!.type is InterfaceType) {
                      return MapEntry(
                        declaration.declaredElement!.displayName,
                        SwidType.fromSwidInterface(
                          swidInterface: swidInterfaceFromInterface(
                            interfaceType: declaration.declaredElement!.type
                                as InterfaceType,
                            buildElements: true,
                          ),
                        ),
                      );
                    }
                  }
                }
              }
            },
          )
          .toList()
          .cast<MapEntry<String, SwidType>?>()
          .where(
            (x) => x != null,
          )
          .toList()
          .cast<MapEntry<String, SwidType>>(),
    ),
    typeFormals:
        ((TypeParameterList? typeParameterList) => typeParameterList != null
            ? typeParameterList.typeParameters
                .map(
                  (x) => swidTypeFormalFromTypeParameter(
                    typeParameter: x,
                    buildElements: buildElements,
                  ),
                )
                .toList()
            : <SwidTypeFormal>[])(
      dartClassOrMixinOrClassTypAliasDeclaration.childEntities.firstWhereOrNull(
        (x) => x is TypeParameterList,
      ) as TypeParameterList?,
    ),
  );
}
