import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';

const dartDouble = const SwidInterface(
  name: "double",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
);

const dartInt = const SwidInterface(
  name: "int",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
);

const dartNullableInt = const SwidInterface(
  name: "int?",
  nullabilitySuffix: SwidNullabilitySuffix.question,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
);

const dartDynamic = const SwidInterface(
  name: "dynamic",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "",
  referenceDeclarationKind: SwidReferenceDeclarationKind.dynamicType,
  typeArguments: [],
);

const dartVoid = const SwidInterface(
  name: "void",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "",
  referenceDeclarationKind: SwidReferenceDeclarationKind.voidType,
  typeArguments: [],
);
