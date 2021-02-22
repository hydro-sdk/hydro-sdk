import 'package:hydro_sdk/swid/ir/frontend/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/frontend/swidReferenceDeclarationKind.dart';

class DartPrimitives {
  static const dartDouble = const SwidInterface(
    name: "double",
    nullabilitySuffix: SwidNullabilitySuffix.none,
    originalPackagePath: "dart:core",
    typeArguments: [],
    referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  );

  static const dartDynamic = const SwidInterface(
    name: "dynamic",
    nullabilitySuffix: SwidNullabilitySuffix.none,
    originalPackagePath: "",
    referenceDeclarationKind: SwidReferenceDeclarationKind.dynamicType,
    typeArguments: [],
  );
}
