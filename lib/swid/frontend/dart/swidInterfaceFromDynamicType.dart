import 'package:analyzer/dart/element/type.dart' show DynamicType;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/frontend/dart/mapAnalyzerNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';

SwidInterface swidInterfaceFromDynamicType(
        {@required DynamicType dynamicType}) =>
    SwidInterface(
      name: dynamicType.element?.name ??
          dynamicType?.getDisplayString(withNullability: false),
      typeArguments: [],
      nullabilitySuffix: mapNullabilitySuffix(
          nullabilitySuffix: dynamicType.nullabilitySuffix),
      originalPackagePath:
          dynamicType.element?.librarySource?.uri?.toString() ?? "",
      referenceDeclarationKind: SwidReferenceDeclarationKind.dynamicType,
    );
