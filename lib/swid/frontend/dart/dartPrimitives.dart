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

  static const dartInt = const SwidInterface(
    name: "int",
    nullabilitySuffix: SwidNullabilitySuffix.none,
    originalPackagePath: "dart:core",
    typeArguments: [],
    referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  );

  static const dartNullableInt = const SwidInterface(
    name: "int?",
    nullabilitySuffix: SwidNullabilitySuffix.question,
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

  static const dartVoid = const SwidInterface(
    name: "void",
    nullabilitySuffix: SwidNullabilitySuffix.none,
    originalPackagePath: "",
    referenceDeclarationKind: SwidReferenceDeclarationKind.voidType,
    typeArguments: [],
  );
}
