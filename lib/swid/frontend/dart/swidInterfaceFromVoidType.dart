import 'package:analyzer/dart/element/type.dart' show VoidType;

import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';

SwidInterface swidInterfaceFromVoidType({required VoidType voidType}) =>
    SwidInterface(
        name: "void",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        originalPackagePath: "",
        typeArguments: [],
        referenceDeclarationKind: SwidReferenceDeclarationKind.voidType);
