import 'package:analyzer/dart/element/type.dart' show VoidType;

import 'package:hydro_sdk/swid/ir/swidDeclarationModifiers.dart';
import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';

SwidInterface swidInterfaceFromVoidType({
  required final VoidType voidType,
}) =>
    SwidInterface(
      name: "void",
      nullabilitySuffix: SwidNullabilitySuffix.none,
      originalPackagePath: "",
      typeArguments: [],
      referenceDeclarationKind: SwidReferenceDeclarationKind.voidType,
      declarationModifiers: SwidDeclarationModifiers.empty(),
    );
