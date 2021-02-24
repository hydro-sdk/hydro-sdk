import 'package:analyzer/dart/ast/ast.dart' show TypeName;
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

import 'package:analyzer/dart/element/element.dart'
    show PropertyAccessorElement;

import 'package:analyzer/dart/element/type.dart'
    show InterfaceType, TypeParameterType;

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
