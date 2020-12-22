import 'package:analyzer/dart/ast/ast.dart'
    show
        ClassOrMixinDeclaration,
        FieldDeclaration,
        VariableDeclaration,
        VariableDeclarationList;
import 'package:analyzer/dart/element/type.dart' show InterfaceType;
import 'package:analyzer/src/dart/ast/ast.dart'
    show ConstructorDeclarationImpl, MethodDeclarationImpl;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/narrowModifierProducer.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidType.dart';
import 'package:meta/meta.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/dart/swidNullabilitySuffix.dart';

part 'swidClass.freezed.dart';
part 'swidClass.g.dart';

@freezed
abstract class SwidClass with _$SwidClass {
  factory SwidClass({
    @required String name,
    @required SwidNullabilitySuffix nullabilitySuffix,
    @required String originalPackagePath,
    @required @nullable SwidFunctionType constructorType,
    @required List<SwidFunctionType> factoryConstructors,
    @required List<SwidFunctionType> staticMethods,
    @required List<SwidFunctionType> methods,
    @required
        List<SwidStaticConstFieldDeclaration> staticConstFieldDeclarations,
    @required Map<String, SwidType> instanceFieldDeclarations,
    @required SwidDeclarationModifiers swidDeclarationModifiers,
  }) = _$Data;

  factory SwidClass.fromJson(Map<String, dynamic> json) =>
      _$SwidClassFromJson(json);

  factory SwidClass.clone({
    @required SwidClass swidClass,
    String name,
    SwidNullabilitySuffix nullabilitySuffix,
    String originalPackagePath,
    SwidFunctionType constructorType,
    List<SwidFunctionType> factoryConstructors,
    List<SwidFunctionType> staticMethods,
    List<SwidFunctionType> methods,
    List<SwidStaticConstFieldDeclaration> staticConstFieldDeclarations,
    Map<String, SwidType> instanceFieldDeclarations,
    SwidDeclarationModifiers swidDeclarationModifiers,
  }) =>
      SwidClass(
        name: name ?? swidClass.name,
        nullabilitySuffix: nullabilitySuffix ?? swidClass.nullabilitySuffix,
        originalPackagePath:
            originalPackagePath ?? swidClass.originalPackagePath,
        constructorType: constructorType != null
            ? constructorType
            : swidClass.constructorType != null
                ? SwidFunctionType.clone(
                    swidFunctionType: swidClass.constructorType)
                : null,
        factoryConstructors: factoryConstructors ??
            List.from(swidClass.factoryConstructors
                    ?.map((x) => SwidFunctionType.clone(swidFunctionType: x))
                    ?.toList() ??
                []),
        staticMethods: staticMethods ??
            List.from(swidClass.staticMethods
                    ?.map((x) => SwidFunctionType.clone(swidFunctionType: x))
                    ?.toList() ??
                []),
        methods: methods ??
            List.from(swidClass?.methods
                    ?.map((x) => SwidFunctionType.clone(swidFunctionType: x))
                    ?.toList() ??
                []),
        staticConstFieldDeclarations: staticConstFieldDeclarations ??
            List.from(swidClass.staticConstFieldDeclarations ?? []),
        instanceFieldDeclarations: instanceFieldDeclarations ??
            Map.from(swidClass.instanceFieldDeclarations ?? {}),
        swidDeclarationModifiers:
            swidDeclarationModifiers ?? swidClass.swidDeclarationModifiers,
      );

  factory SwidClass.fromClassOrMixinDeclaration(
      {@required ClassOrMixinDeclaration classOrMixinDeclaration}) {
    final List<ConstructorDeclarationImpl> constructors =
        classOrMixinDeclaration.childEntities
            .where((x) => x is ConstructorDeclarationImpl)
            .toList()
            .cast<ConstructorDeclarationImpl>()
            .where((x) => !x.declaredElement.hasProtected)
            .toList();
    var constructorDeclarationImpl = constructors
        .firstWhere((x) => x.factoryKeyword == null, orElse: () => null);

    if (constructorDeclarationImpl == null) {
      constructorDeclarationImpl =
          constructors.firstWhere((x) => x.name == null, orElse: () => null);
    }

    var methods = classOrMixinDeclaration.childEntities
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
        name: classOrMixinDeclaration.name.name,
        nullabilitySuffix: SwidNullabilitySuffix.none,
        swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
        originalPackagePath: classOrMixinDeclaration
                .declaredElement?.librarySource?.uri
                ?.toString() ??
            "",
        constructorType: constructorDeclarationImpl != null
            ? SwidFunctionType.fromFunctionType(
                swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
                functionType: constructorDeclarationImpl.declaredElement.type)
            : null,
        factoryConstructors: constructors
            .where((x) =>
                x.factoryKeyword != null &&
                x.name != null &&
                x.name.name[0] != "_")
            .toList()
            .map((x) => SwidFunctionType.fromFunctionType(
                functionType: x.declaredElement.type,
                name: x.name.name,
                swidDeclarationModifiers: SwidDeclarationModifiers.empty()))
            .toList(),
        methods:
            methods.where((x) => !x.swidDeclarationModifiers.isStatic).toList(),
        staticMethods:
            methods.where((x) => x.swidDeclarationModifiers.isStatic).toList(),
        staticConstFieldDeclarations: classOrMixinDeclaration.childEntities
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
                  declaration.declaredElement.isStatic &&
                  declaration.declaredElement.isPublic) {
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
          classOrMixinDeclaration.childEntities
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
        ));
  }
}

extension SwidClassMethods on SwidClass {
  bool isPureAbstract() =>
      swidDeclarationModifiers.isAbstract &&
      methods.every((x) => x.swidDeclarationModifiers.isAbstract);

  bool isConstructible() => constructorType != null;
}
