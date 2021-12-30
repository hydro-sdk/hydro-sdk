import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart'
    show InterfaceType, DartType, TypeParameterType;
import 'package:analyzer/src/dart/element/element.dart' show EnumElementImpl;

import 'package:hydro_sdk/swid/frontend/dart/mapAnalyzerNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/dart/mapClassLibrarySourcePath.dart';
import 'package:hydro_sdk/swid/frontend/dart/narrowDartTypeToSwidType.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidElement.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentElement.dart';
import 'package:hydro_sdk/swid/ir/swidTypeArgumentType.dart';

SwidInterface swidInterfaceFromInterface({
  required final InterfaceType interfaceType,
  required final bool buildElements,
}) =>
    SwidInterface(
      name: interfaceType.getDisplayString(
        withNullability: false,
      ),
      typeArguments: interfaceType.typeArguments
          .map(
            (x) => SwidTypeArgumentType(
              type: narrowDartTypeToSwidType(
                dartType: x,
                buildElements: true,
              ),
              element: x is TypeParameterType
                  ? SwidElement.fromSwidTypeArgumentElement(
                      swidTypeArgumentElement: SwidTypeArgumentElement(
                        bound: narrowDartTypeToSwidType(
                          dartType: x.bound,
                          buildElements: true,
                        ),
                      ),
                    )
                  : null,
            ),
          )
          .toList(),
      nullabilitySuffix: mapNullabilitySuffix(
        nullabilitySuffix: interfaceType.nullabilitySuffix,
      )!,
      originalPackagePath: mapClassLibrarySourcePath(
        element: interfaceType.element,
      ),
      referenceDeclarationKind: interfaceType.element is EnumElementImpl
          ? SwidReferenceDeclarationKind.enumElement
          : interfaceType.element is ClassElement
              ? SwidReferenceDeclarationKind.classElement
              : SwidReferenceDeclarationKind.unknown,
      declarationModifiers: SwidDeclarationModifiers.empty(),
    );

/*
TypeParameterType.bound has enough information to identify the bound of the type parameter
Should probably create new class SwidElement in similar manner to hold this information
SwidInterface.typeArguments should probably be of type new class List<SwidTypeArgumentType> 

where 
class SwidTypeArgumentType {
  SwidType type;
  SwidElement element;
}

and 
class SwidTypeArgumentElement {
  SwidType bound;
}



New Swidi syntax to express elements on usage sites ????
*/