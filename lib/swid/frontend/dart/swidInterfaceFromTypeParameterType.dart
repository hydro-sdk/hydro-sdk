import 'package:analyzer/dart/element/type.dart' show TypeParameterType;

import 'package:hydro_sdk/swid/frontend/dart/mapAnalyzerNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';

SwidInterface swidInterfaceFromTypeParameterType({
  required final TypeParameterType typeParameterType,
}) =>
    SwidInterface(
      name: typeParameterType.element.name.isNotEmpty
          ? typeParameterType.element.name
          : typeParameterType.getDisplayString(withNullability: false),
      typeArguments: [],
      nullabilitySuffix: mapNullabilitySuffix(
          nullabilitySuffix: typeParameterType.nullabilitySuffix)!,
      originalPackagePath:
          typeParameterType.element.librarySource?.uri.toString() ?? "",
      referenceDeclarationKind: SwidReferenceDeclarationKind.typeParameterType,
      declarationModifiers: SwidDeclarationModifiers.empty(),
    );
