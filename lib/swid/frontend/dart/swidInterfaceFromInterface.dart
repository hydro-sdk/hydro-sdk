import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart' show InterfaceType;
import 'package:analyzer/src/dart/element/element.dart' show EnumElementImpl;
import 'package:freezed_annotation/freezed_annotation.dart';


import 'package:hydro_sdk/swid/frontend/dart/mapAnalyzerNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/frontend/dart/mapClassLibrarySourcePath.dart';
import 'package:hydro_sdk/swid/frontend/dart/narrowDartTypeToSwidType.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';

SwidInterface swidInterfaceFromInterface(
        {required InterfaceType interfaceType}) =>
    SwidInterface(
      name: interfaceType.getDisplayString(withNullability: false),
      typeArguments: interfaceType.typeArguments
          .map((x) => narrowDartTypeToSwidType(dartType: x))
          .toList(),
      nullabilitySuffix: mapNullabilitySuffix(
          nullabilitySuffix: interfaceType.nullabilitySuffix)!,
      originalPackagePath:
          mapClassLibrarySourcePath(element: interfaceType.element),
      referenceDeclarationKind: interfaceType.element is EnumElementImpl
          ? SwidReferenceDeclarationKind.enumElement
          : interfaceType.element is ClassElement
              ? SwidReferenceDeclarationKind.classElement
              : null,
    );
