import 'package:analyzer/dart/element/element.dart';

import 'package:hydro_sdk/swid/frontend/dart/mapClassLibrarySourcePath.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';

SwidInterface swidInterfaceFromClassElement({
  required final ClassElement classElement,
}) =>
    SwidInterface(
      name: classElement.name,
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: mapClassLibrarySourcePath(element: classElement),
      typeArguments: [],
      referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
      declarationModifiers: SwidDeclarationModifiers.empty(),
    );
