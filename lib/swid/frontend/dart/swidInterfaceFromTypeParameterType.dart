import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/frontend/dart/mapAnalyzerNullabilitySuffix.dart';

import 'package:analyzer/dart/element/type.dart'
    show TypeParameterType;

SwidInterface swidInterfaceFromTypeParameterType(
        {@required TypeParameterType typeParameterType}) =>
    SwidInterface(
      name: typeParameterType.element?.name ??
          typeParameterType?.getDisplayString(withNullability: false),
      typeArguments: [],
      nullabilitySuffix: mapNullabilitySuffix(
          nullabilitySuffix: typeParameterType.nullabilitySuffix),
      originalPackagePath:
          typeParameterType.element?.librarySource?.uri?.toString() ?? "",
      referenceDeclarationKind: SwidReferenceDeclarationKind.typeParameterType,
    );
