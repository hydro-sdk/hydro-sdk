import 'package:analyzer/dart/ast/ast.dart' show TypeName;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidFunctionTypeFromFunctionType.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidInterfaceFromTypeParameterType.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/util/mapAnalyzerNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/dart/mapClassLibrarySourcePath.dart';

import 'package:analyzer/dart/element/element.dart'
    show PropertyAccessorElement;

import 'package:analyzer/dart/element/type.dart'
    show InterfaceType, TypeParameterType;

SwidClass swidClassFromInterfaceType({
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
                baseClassMethod: swidFunctionTypeFromFunctionType(
                  functionType: x.declaration.type,
                  swidDeclarationModifiers: SwidDeclarationModifiers.clone(
                    swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
                    isAbstract: x.isAbstract,
                  ),
                ),
                childClassMethod: swidFunctionTypeFromFunctionType(
                  functionType: x.type,
                  swidDeclarationModifiers: SwidDeclarationModifiers.clone(
                    swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
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
              (x) => swidFunctionTypeFromFunctionType(
                functionType: x.type,
                swidDeclarationModifiers: SwidDeclarationModifiers.clone(
                  swidDeclarationModifiers: SwidDeclarationModifiers.clone(
                    swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
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
          .map((x) => swidClassFromInterfaceType(
                interfaceType: x,
                fullyResolveInterfaceTypeFormals: false,
              ))
          .toList(),
      isMixin: false,
      extendedClass: interfaceType.superclass != null
          ? swidClassFromInterfaceType(
              interfaceType: interfaceType.superclass,
              fullyResolveInterfaceTypeFormals: false,
            )
          : null,
      typeFormals: interfaceType.typeArguments
          .map((x) => x is InterfaceType && fullyResolveInterfaceTypeFormals
              ? SwidTypeFormal(
                  value: SwidTypeFormalValue.fromSwidClass(
                    swidClass: swidClassFromInterfaceType(
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
                        swidClass: swidClassFromInterfaceType(
                            interfaceType: (x as TypeName).type),
                      ),
                      swidReferenceDeclarationKind:
                          SwidReferenceDeclarationKind.classElement,
                    )
                  : x is TypeParameterType
                      ? SwidTypeFormal(
                          value: SwidTypeFormalValue.fromSwidInterface(
                            swidInterface: swidInterfaceFromTypeParameterType(
                                typeParameterType: x),
                          ),
                          swidReferenceDeclarationKind:
                              SwidReferenceDeclarationKind.typeParameterType,
                        )
                      : null)
          .toList(),
    );
