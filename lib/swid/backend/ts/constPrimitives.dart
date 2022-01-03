import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';

final typescriptUnknownInterface = SwidInterface(
  name: "unknown",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: SwidDeclarationModifiers.empty(),
);

final typescriptAnyInterface = SwidInterface(
  name: "any",
  nullabilitySuffix: SwidNullabilitySuffix.none,
  originalPackagePath: "",
  typeArguments: [],
  referenceDeclarationKind: SwidReferenceDeclarationKind.classElement,
  declarationModifiers: SwidDeclarationModifiers.empty(),
);
