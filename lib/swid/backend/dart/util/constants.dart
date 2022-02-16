import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';

final dartList = SwidInterface(
  name: "List",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "dart:core",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: SwidDeclarationModifiers.empty(),
);

final box = SwidInterface(
  name: "Box",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "package:hydro_sdk/cfr/runtimeSupport.dart",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: SwidDeclarationModifiers.empty(),
);

final vmManagedBox = SwidInterface(
  name: "VMManagedBox",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "package:hydro_sdk/cfr/runtimeSupport.dart",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: SwidDeclarationModifiers.empty(),
);

final makeLuaDartFunc = SwidInterface(
  name: "makeLuaDartFunc",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "package:hydro_sdk/cfr/runtimeSupport.dart",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: SwidDeclarationModifiers.empty(),
);

final registerBoxer = SwidInterface(
  name: "registerBoxer",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "package:hydro_sdk/cfr/runtimeSupport.dart",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: SwidDeclarationModifiers.empty(),
);

final maybeBoxObject = SwidInterface(
  name: "maybeBoxObject",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "package:hydro_sdk/cfr/runtimeSupport.dart",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: SwidDeclarationModifiers.empty(),
);

final maybeUnBoxAndBuildArgument = SwidInterface(
  name: "maybeUnBoxAndBuildArgument",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "package:hydro_sdk/cfr/runtimeSupport.dart",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: SwidDeclarationModifiers.empty(),
);

final maybeUnBoxEnum = SwidInterface(
  name: "maybeUnBoxEnum",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "package:hydro_sdk/cfr/runtimeSupport.dart",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: SwidDeclarationModifiers.empty(),
);

final hydroTable = SwidInterface(
  name: "HydroTable",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "package:hydro_sdk/cfr/runtimeSupport.dart",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: SwidDeclarationModifiers.empty(),
);

final hydroState = SwidInterface(
  name: "HydroState",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "package:hydro_sdk/cfr/runtimeSupport.dart",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: SwidDeclarationModifiers.empty(),
);

final closure = SwidInterface(
  name: "Closure",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "package:hydro_sdk/cfr/runtimeSupport.dart",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: SwidDeclarationModifiers.empty(),
);

final context = SwidInterface(
  name: "Context",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "package:hydro_sdk/cfr/runtimeSupport.dart",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: SwidDeclarationModifiers.empty(),
);
