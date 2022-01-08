import 'package:analyzer/dart/ast/ast.dart' show TypeName;

import 'package:hydro_sdk/swid/frontend/dart/mapAnalyzerNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/dart/mapClassLibrarySourcePath.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidDeclarationModifiersFromElement.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidFunctionTypeFromFunctionType.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidFunctionTypeFromPropertyAccessor.dart';
import 'package:hydro_sdk/swid/frontend/dart/swidInterfaceFromTypeParameterType.dart';
import 'package:hydro_sdk/swid/ir/swidClass.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormalValue.dart';

import 'package:analyzer/dart/element/element.dart'
    show PropertyAccessorElement;

import 'package:analyzer/dart/element/type.dart'
    show InterfaceType, TypeParameterType;

SwidClass swidClassFromInterfaceType({
  required final InterfaceType interfaceType,
  required final bool buildElements,
  /*
      This is a hack to break cycles in self-referencing class declarations (declarations that look like CRTP).
      Should probably use an inheritance manager of some sort similar to package:analyzer.
      A SWID inheritance manager would have to be fully serializable.
    */
  int interfaceTypeFormalResolutionDepth = 10,
}) =>
    SwidClass(
      name: interfaceType.getDisplayString(withNullability: false),
      nullabilitySuffix: mapNullabilitySuffix(
          nullabilitySuffix: interfaceType.nullabilitySuffix)!,
      originalPackagePath:
          mapClassLibrarySourcePath(element: interfaceType.element),
      constructorType: null,
      generativeConstructors: [],
      factoryConstructors: [],
      staticMethods: [],
      methods: [
        ...interfaceType.methods
            .where((x) => !x.isStatic)
            .map(
              (x) => (({
                required final SwidFunctionType baseClassMethod,
                required final SwidFunctionType childClassMethod,
              }) =>
                  SwidFunctionType.clone(
                    swidFunctionType: childClassMethod,
                    declarationModifiers: baseClassMethod.declarationModifiers,
                    namedDefaults: Map.of(baseClassMethod.namedDefaults)
                      ..addAll(
                        childClassMethod.namedDefaults,
                      ),
                  ))(
                baseClassMethod: swidFunctionTypeFromFunctionType(
                  buildElements: buildElements,
                  functionType: x.declaration.type,
                  declarationModifiers: SwidDeclarationModifiers.clone(
                    declarationModifiers: swidDeclarationModifiersFromElement(
                      element: x,
                    ),
                    isAbstract: x.isAbstract,
                    isSynthetic: x.isSynthetic,
                    hasProtected: x.hasProtected,
                    hasMustCallSuper: x.hasMustCallSuper,
                    hasVisibleForTesting: x.hasVisibleForTesting,
                  ),
                  name: x.declaration.displayName,
                ),
                childClassMethod: swidFunctionTypeFromFunctionType(
                  buildElements: buildElements,
                  functionType: x.type,
                  declarationModifiers: SwidDeclarationModifiers.clone(
                    declarationModifiers: SwidDeclarationModifiers.empty(),
                    isAbstract: x.isAbstract,
                    isSynthetic: x.isSynthetic,
                    hasProtected: x.hasProtected,
                    hasMustCallSuper: x.hasMustCallSuper,
                  ),
                  name: x.declaration.displayName,
                ),
              ),
            )
            .toList(),
        ...interfaceType.accessors
            .whereType<PropertyAccessorElement>()
            .where(
              (x) => x.name[0] != "_",
            )
            .where(
              (x) => !x.isStatic,
            )
            .where(
              (x) => !x.isSynthetic,
            )
            .map(
              (x) => swidFunctionTypeFromPropertyAccessor(
                buildElements: buildElements,
                propertyAccessorElement: x,
              ),
            )
            .toList()
      ],
      staticConstFieldDeclarations: [],
      instanceFieldDeclarations: Map.fromEntries(
        interfaceType.accessors
            .whereType<PropertyAccessorElement>()
            .where(
              (x) => x.name[0] != "_",
            )
            .where(
              (x) => !x.isStatic,
            )
            .where(
              (x) => x.isSynthetic,
            )
            .where(
              (x) => x.isGetter,
            )
            .map(
              (x) => MapEntry(
                x.name,
                swidFunctionTypeFromPropertyAccessor(
                  propertyAccessorElement: x,
                  buildElements: buildElements,
                ).returnType,
              ),
            ),
      ),
      declarationModifiers: SwidDeclarationModifiers.empty(),
      mixedInClasses: interfaceType.mixins
          .map(
            (x) => swidClassFromInterfaceType(
              buildElements: buildElements,
              interfaceType: x,
            ),
          )
          .toList(),
      implementedClasses: interfaceType.interfaces
          .map((x) => swidClassFromInterfaceType(
                buildElements: buildElements,
                interfaceType: x,
                interfaceTypeFormalResolutionDepth:
                    interfaceTypeFormalResolutionDepth - 1,
              ))
          .toList(),
      isMixin: false,
      extendedClass: interfaceType.superclass != null
          ? swidClassFromInterfaceType(
              buildElements: buildElements,
              interfaceType: interfaceType.superclass!,
              interfaceTypeFormalResolutionDepth:
                  interfaceTypeFormalResolutionDepth - 1,
            )
          : null,
      typeFormals: interfaceType.typeArguments
          .map(
            (x) => x is InterfaceType && interfaceTypeFormalResolutionDepth > 0
                ? SwidTypeFormal(
                    swidTypeFormalBound: null,
                    value: SwidTypeFormalValue.fromSwidClass(
                      swidClass: swidClassFromInterfaceType(
                        buildElements: buildElements,
                        interfaceType: x,
                        interfaceTypeFormalResolutionDepth:
                            interfaceTypeFormalResolutionDepth - 1,
                      ),
                    ),
                    swidReferenceDeclarationKind:
                        SwidReferenceDeclarationKind.classElement,
                  )
                : x is TypeName
                    ? SwidTypeFormal(
                        swidTypeFormalBound: null,
                        value: SwidTypeFormalValue.fromSwidClass(
                          swidClass: swidClassFromInterfaceType(
                              buildElements: buildElements,
                              interfaceType:
                                  (x as TypeName).type as InterfaceType),
                        ),
                        swidReferenceDeclarationKind:
                            SwidReferenceDeclarationKind.classElement,
                      )
                    : x is TypeParameterType
                        ? SwidTypeFormal(
                            swidTypeFormalBound: null,
                            value: SwidTypeFormalValue.fromSwidInterface(
                              swidInterface: swidInterfaceFromTypeParameterType(
                                  typeParameterType: x),
                            ),
                            swidReferenceDeclarationKind:
                                SwidReferenceDeclarationKind.typeParameterType,
                          )
                        : null,
          )
          .where(
            (x) => x != null,
          )
          .toList()
          .cast<SwidTypeFormal>(),
    );
