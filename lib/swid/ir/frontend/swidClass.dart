import 'package:analyzer/dart/ast/ast.dart'
    show
        ClassDeclaration,
        ClassOrMixinDeclaration,
        FieldDeclaration,
        VariableDeclaration,
        VariableDeclarationList,
        TypeParameterList,
        TypeName;

import 'package:analyzer/dart/element/element.dart'
    show PropertyAccessorElement;

import 'package:analyzer/dart/element/type.dart'
    show InterfaceType, TypeParameterType;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/frontend/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidStaticConstFieldDeclaration.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidType.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/frontend/util/mapAnalyzerNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/util/mapClassLibrarySourcePath.dart';
import 'package:hydro_sdk/swid/ir/frontend/util/narrowModifierProducer.dart';

import 'package:analyzer/src/dart/ast/ast.dart'
    show ConstructorDeclarationImpl, MethodDeclarationImpl;

part 'swidClass.freezed.dart';
part 'swidClass.g.dart';

@freezed
abstract class SwidClass with _$SwidClass {
  const factory SwidClass({
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
    @required List<SwidClass> mixedInClasses,
    @required List<SwidClass> implementedClasses,
    @required @nullable SwidClass extendedClass,
    @required bool isMixin,
    @required List<SwidTypeFormal> typeFormals,
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
    List<SwidClass> mixedInClasses,
    List<SwidClass> implementedClasses,
    bool isMixin,
    SwidClass extendedClass,
    List<SwidTypeFormal> typeFormals,
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
        mixedInClasses: mixedInClasses ??
            List.from(swidClass.mixedInClasses
                    ?.map((x) => SwidClass.clone(swidClass: x))
                    ?.toList() ??
                []),
        implementedClasses: implementedClasses ??
            List.from(swidClass.implementedClasses
                    ?.map((x) => SwidClass.clone(swidClass: x))
                    ?.toList() ??
                []),
        isMixin: isMixin ?? swidClass.isMixin,
        extendedClass: extendedClass ?? swidClass.extendedClass,
        typeFormals: typeFormals ?? List.from(swidClass.typeFormals ?? []),
      );

  factory SwidClass.empty() => SwidClass(
        name: "",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        originalPackagePath: "",
        constructorType: null,
        factoryConstructors: [],
        staticMethods: [],
        methods: [],
        staticConstFieldDeclarations: [],
        instanceFieldDeclarations: {},
        swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
        mixedInClasses: [],
        implementedClasses: [],
        extendedClass: null,
        isMixin: false,
        typeFormals: [],
      );

  factory SwidClass.mergeDeclarations(
          {@required SwidClass swidClass, @required SwidClass superClass}) =>
      superClass != null
          ? SwidClass.clone(
              swidClass: swidClass,
              instanceFieldDeclarations: Map.fromEntries([
                ...swidClass.instanceFieldDeclarations.entries
                    .map((x) => MapEntry(x.key, x.value))
                    .toList(),
                ...superClass.instanceFieldDeclarations.entries
                    .where((x) =>
                        swidClass.instanceFieldDeclarations.entries.firstWhere(
                            (k) => k.key == x.key,
                            orElse: () => null) ==
                        null)
                    .map((x) => MapEntry(x.key, x.value))
                    .toList()
              ]),
              methods: List.from([
                ...swidClass.methods,
                ...superClass.methods
                    .where((x) =>
                        swidClass.methods.firstWhere((k) => k.name == x.name,
                            orElse: () => null) ==
                        null)
                    .toList()
              ]))
          : SwidClass.clone(swidClass: swidClass);

  factory SwidClass.mergeSuperClasses({@required SwidClass swidClass}) =>
      (({SwidClass swidClassWithMergedInterfaces}) => ((
                  {SwidClass swidClassWithMixinApplications}) =>
              swidClassWithMixinApplications.extendedClass != null
                  ? SwidClass.mergeDeclarations(
                      swidClass: swidClassWithMixinApplications,
                      superClass: SwidClass.mergeSuperClasses(
                          swidClass:
                              swidClassWithMixinApplications.extendedClass))
                  : SwidClass.clone(swidClass: swidClassWithMixinApplications))(
            swidClassWithMixinApplications: swidClassWithMergedInterfaces
                    .mixedInClasses.isNotEmpty
                ? swidClassWithMergedInterfaces.mixedInClasses.fold(
                    swidClassWithMergedInterfaces,
                    (previousValue, element) => SwidClass.mergeDeclarations(
                        swidClass: previousValue,
                        superClass:
                            SwidClass.mergeSuperClasses(swidClass: element)))
                : SwidClass.clone(swidClass: swidClassWithMergedInterfaces),
          ))(
        swidClassWithMergedInterfaces: swidClass.implementedClasses.isNotEmpty
            ? swidClass.implementedClasses.fold(
                swidClass,
                (previousValue, element) => SwidClass.mergeDeclarations(
                    swidClass: previousValue,
                    superClass:
                        SwidClass.mergeSuperClasses(swidClass: element)))
            : SwidClass.clone(swidClass: swidClass),
      );

  factory SwidClass.fromClassOrMixinDeclaration({
    @required ClassOrMixinDeclaration classOrMixinDeclaration,
    @required bool isMixin,
  }) {
    final List<ConstructorDeclarationImpl> constructors =
        classOrMixinDeclaration.childEntities
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
        isMixin: isMixin,
        nullabilitySuffix: SwidNullabilitySuffix.none,
        swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
        originalPackagePath: classOrMixinDeclaration.declaredElement?.librarySource?.uri?.toString() ??
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
        mixedInClasses: classOrMixinDeclaration is ClassDeclaration
            ? classOrMixinDeclaration.withClause != null
                ? classOrMixinDeclaration.withClause.mixinTypes
                    .map((x) =>
                        SwidClass.fromInterfaceType(interfaceType: x.type))
                    .toList()
                : []
            : [],
        extendedClass: classOrMixinDeclaration is ClassDeclaration
            ? classOrMixinDeclaration.extendsClause != null
                ? ((InterfaceType interfaceType) => interfaceType != null
                    ? SwidClass.fromInterfaceType(interfaceType: interfaceType)
                    : null)(((TypeName typeName) =>
                        typeName != null && typeName.type is InterfaceType ? typeName.type : null)(
                    classOrMixinDeclaration.extendsClause.childEntities
                        .firstWhere(
                    (x) => x is TypeName,
                    orElse: () => null,
                  )))
                : null
            : null,
        implementedClasses: classOrMixinDeclaration is ClassDeclaration
            ? classOrMixinDeclaration.implementsClause != null
                ? classOrMixinDeclaration.implementsClause.interfaces
                    .where((x) => x.type is InterfaceType)
                    .map((x) => SwidClass.fromInterfaceType(interfaceType: x.type))
                    .toList()
                : []
            : [],
        staticConstFieldDeclarations: classOrMixinDeclaration.childEntities.where((x) => x is FieldDeclaration).toList().cast<FieldDeclaration>().map((x) {
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
        ),
        typeFormals: ((TypeParameterList typeParameterList) => typeParameterList != null
            ? typeParameterList.typeParameters
                .map((x) => SwidTypeFormal.fromTypeParameter(
                      typeParameter: x,
                    ))
                .toList()
            : <SwidTypeFormal>[])(classOrMixinDeclaration.childEntities.firstWhere(
          (x) => x is TypeParameterList,
          orElse: () => null,
        )));
  }

  factory SwidClass.fromInterfaceType({
    @required InterfaceType interfaceType,
    /*
      This is a hack to break cycles in self-referencing class declarations (declarations that look like CRTP).
      Should probably use an inheritance manager of some sort similar to package:analyzer.
      A SWID inheritance manager would have to be fully serializable.
    */
    bool fullyResolveInterfaceTypeFormals = true,
  }) =>
      SwidClass(
        name: interfaceType.getDisplayString(withNullability: false),
        nullabilitySuffix: mapNullabilitySuffix(
            nullabilitySuffix: interfaceType.nullabilitySuffix),
        originalPackagePath:
            mapClassLibrarySourcePath(element: interfaceType.element),
        constructorType: null,
        factoryConstructors: [],
        staticMethods: [],
        methods: [
          ...interfaceType.methods
              .where((x) => !x.isStatic)
              .map(
                (x) => (({
                  SwidFunctionType baseClassMethod,
                  SwidFunctionType childClassMethod,
                }) =>
                    SwidFunctionType.clone(
                        swidFunctionType: childClassMethod,
                        namedDefaults: Map.of(baseClassMethod.namedDefaults)
                          ..addAll(childClassMethod.namedDefaults)))(
                  baseClassMethod: SwidFunctionType.fromFunctionType(
                    functionType: x.declaration.type,
                    swidDeclarationModifiers: SwidDeclarationModifiers.clone(
                      swidDeclarationModifiers:
                          SwidDeclarationModifiers.empty(),
                      isAbstract: x.isAbstract,
                    ),
                  ),
                  childClassMethod: SwidFunctionType.fromFunctionType(
                    functionType: x.type,
                    swidDeclarationModifiers: SwidDeclarationModifiers.clone(
                      swidDeclarationModifiers:
                          SwidDeclarationModifiers.empty(),
                      isAbstract: x.isAbstract,
                    ),
                  ),
                ),
              )
              .toList(),
          ...interfaceType.accessors
              .whereType<PropertyAccessorElement>()
              .where((x) => x.name[0] != "_")
              .where((x) => !x.isStatic)
              .map(
                (x) => SwidFunctionType.fromFunctionType(
                  functionType: x.type,
                  swidDeclarationModifiers: SwidDeclarationModifiers.clone(
                    swidDeclarationModifiers: SwidDeclarationModifiers.clone(
                      swidDeclarationModifiers:
                          SwidDeclarationModifiers.empty(),
                      isAbstract: x.isAbstract,
                    ),
                    isGetter: x.isGetter,
                    isSetter: x.isSetter,
                  ),
                ),
              )
              .toList()
        ],
        staticConstFieldDeclarations: [],
        instanceFieldDeclarations: {},
        swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
        mixedInClasses: [],
        implementedClasses: interfaceType.interfaces
            .map((x) => SwidClass.fromInterfaceType(
                  interfaceType: x,
                  fullyResolveInterfaceTypeFormals: false,
                ))
            .toList(),
        isMixin: false,
        extendedClass: interfaceType.superclass != null
            ? SwidClass.fromInterfaceType(
                interfaceType: interfaceType.superclass,
                fullyResolveInterfaceTypeFormals: false,
              )
            : null,
        typeFormals: interfaceType.typeArguments
            .map((x) => x is InterfaceType && fullyResolveInterfaceTypeFormals
                ? SwidTypeFormal(
                    value: SwidTypeFormalValue.fromSwidClass(
                      swidClass: SwidClass.fromInterfaceType(
                        interfaceType: x,
                        fullyResolveInterfaceTypeFormals: false,
                      ),
                    ),
                    swidReferenceDeclarationKind:
                        SwidReferenceDeclarationKind.classElement,
                  )
                : x is TypeName
                    ? SwidTypeFormal(
                        value: SwidTypeFormalValue.fromSwidClass(
                          swidClass: SwidClass.fromInterfaceType(
                              interfaceType: (x as TypeName).type),
                        ),
                        swidReferenceDeclarationKind:
                            SwidReferenceDeclarationKind.classElement,
                      )
                    : x is TypeParameterType
                        ? SwidTypeFormal(
                            value: SwidTypeFormalValue.fromSwidInterface(
                              swidInterface:
                                  SwidInterface.fromTypeParameterType(
                                      typeParameterType: x),
                            ),
                            swidReferenceDeclarationKind:
                                SwidReferenceDeclarationKind.typeParameterType,
                          )
                        : null)
            .toList(),
      );
}

extension SwidClassMethods on SwidClass {
  bool isPureAbstract() =>
      swidDeclarationModifiers.isAbstract &&
      (methods.isNotEmpty
          ? methods.every((x) => x.swidDeclarationModifiers.isAbstract)
          : false) &&
      staticMethods.isEmpty &&
      factoryConstructors.isEmpty &&
      staticConstFieldDeclarations.isEmpty;

  bool isConstructible() => constructorType != null;

  String get displayName => SwidType.fromSwidClass(swidClass: this).displayName;
}
