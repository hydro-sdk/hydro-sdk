import 'package:analyzer/dart/ast/ast.dart';

import 'package:hydro_sdk/swid/ir/swidReferenceDeclarationKind.dart';
import 'package:hydro_sdk/swid/ir/swidTypeFormal.dart';

SwidTypeFormal swidTypeFormalFromTypeParameter(
        {required final TypeParameter typeParameter}) =>
    SwidTypeFormal(
        value: SwidTypeFormalValue.fromString(string: typeParameter.name.name),
        swidReferenceDeclarationKind:
            SwidReferenceDeclarationKind.typeParameterType);
