import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';

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
