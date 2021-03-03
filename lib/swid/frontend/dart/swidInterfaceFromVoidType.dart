import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidInterface.dart';
import 'package:hydro_sdk/swid/ir/swidNullabilitySuffix.dart';
import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';

import 'package:analyzer/dart/element/type.dart' show VoidType;

SwidInterface swidInterfaceFromVoidType({@required VoidType voidType}) =>
    SwidInterface(
        name: "void",
        nullabilitySuffix: SwidNullabilitySuffix.none,
        originalPackagePath: "",
        typeArguments: [],
        referenceDeclarationKind: SwidReferenceDeclarationKind.voidType);
