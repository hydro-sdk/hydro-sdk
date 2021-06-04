import 'package:analyzer/dart/ast/ast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';

SwidTypeFormal swidTypeFormalFromTypeParameter(
        {required TypeParameter typeParameter}) =>
    SwidTypeFormal(
        value: SwidTypeFormalValue.fromString(string: typeParameter.name.name),
        swidReferenceDeclarationKind:
            SwidReferenceDeclarationKind.typeParameterType);
