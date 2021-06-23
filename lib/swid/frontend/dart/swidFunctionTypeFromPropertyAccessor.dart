import 'package:hydro_sdk/swid/frontend/dart/swidFunctionTypeFromFunctionType.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidFunctionType.dart';

import 'package:analyzer/dart/element/element.dart'
    show PropertyAccessorElement;

SwidFunctionType swidFunctionTypeFromPropertyAccessor({
  required PropertyAccessorElement propertyAccessorElement,
}) =>
    SwidFunctionType.clone(
      swidFunctionType: swidFunctionTypeFromFunctionType(
        functionType: propertyAccessorElement.type,
        swidDeclarationModifiers: SwidDeclarationModifiers.clone(
          swidDeclarationModifiers: SwidDeclarationModifiers.clone(
            swidDeclarationModifiers: SwidDeclarationModifiers.empty(),
            isAbstract: propertyAccessorElement.isAbstract,
          ),
          isGetter: propertyAccessorElement.isGetter,
          isSetter: propertyAccessorElement.isSetter,
        ),
      ),
      name: propertyAccessorElement.name,
    );
